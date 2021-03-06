require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:nKent)
  end

  test "login with invalid information" do
    # ログイン用のパスを開く
    get login_path
    # 新規セッションのフォームが正しく表示されていることを確認
    assert_template 'sessions/new'
    # わざと無効なparamハッシュを利用しセッション用パスにPOST
    post login_path, params: { session: { email: "", password: "" } }
    # 新規セッションのフォームが再度表示され、フラッシュメッセージが追加されることを確認
    assert_template 'sessions/new'
    assert_not flash.empty?
    # 別のページ（Homeページ）に一旦移動
    get root_path
    # 移動さきのページでフラッシュメッセージが表示されていないことを確認
    assert flash.empty?
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { email: @user.email,
                            password: 'password' } }
    assert is_logged_in?
    # リダイレク先が正しいかどうかを確認
    assert_redirected_to @user
    # 実際に該当ページに遷移
    follow_redirect!
    assert_template 'users/show'
    # 第３引数に、渡したパターンに一致するリンクがゼロになっているかをメソッドに確認させる
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    # ２番目のウィンドウでログアウトをクリックするユーザーをシミュレート
    delete logout_path
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", user_path(@user), count: 0
  end

  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    # assert_equal assigns(:user).remember_token, cookies['remember_token']
    # assert_equal assigns[:user].remember_token, cookies['remember_token']
    assert_not_empty cookies['remember_token']
  end

  test "login without remembering" do
    # クッキーを保存してログイン
    log_in_as(@user, remember_me: '1')
    delete logout_path
    # クッキーを削除してログイン
    log_in_as(@user, remember_me: '0')
    assert_empty cookies['remember_token']
  end

end
