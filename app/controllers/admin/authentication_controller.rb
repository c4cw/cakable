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
  end

  #
  # ログイン認証処理
  #
  def auth
    #ログイン認証処理
      session[:is_login] = true
      redirect_to admin_dashboard_index_path
=begin
    member = Member.find_by_email_and_delete_flg(params[:email], 0)
    if member && member.authenticate(params[:password]) then
      #ログイン情報セッション登録
      session[:member_id] = member.id
      session[:email] = member.email
      session[:is_login] = true
      session[:member_name] = member.member_name     
      redirect_to admin_dashboard_index_path
    else
      reset_session
      flash[:msg] = "ログインが不正です。"
      redirect_to admin_authentication_login_path      
    end  
=end    
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
