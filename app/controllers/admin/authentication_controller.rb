#coding: utf-8
# Admin::AuthenticationController
# Author:: Hiroyuki, Tajima
# Date:: 2014.04.12

#ログイン認証コントローラ
class Admin::AuthenticationController < ApplicationController
  #
  # ログイン画面表示処理
  #
  def login
    if session[:is_login] == true then
      redirect_to admin_authentication_login_path 
    end
  end

  #
  # ログイン認証処理
  #
  def auth
    passwd = params[:passwd]
    if passwd == '123' then
      #ログイン情報セッション登録
      session[:is_login] = true
      redirect_to admin_gender_index_path 
    else      
      reset_session
      flash[:msg] = "パスワードが不正です。"
      redirect_to admin_authentication_login_path 
    end
  end

  #
  # ログアウト処理
  #
  def logout
    reset_session
    flash[:msg] = "ログアウトしました。"
    redirect_to admin_authentication_login_path
  end
  

  #
  # サインイン画面表示処理
  #
  def signin
  end
end
