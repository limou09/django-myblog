from django import forms
from django.forms import ValidationError
from captcha.fields import CaptchaField


#   注册表单
class RegisterForm(forms.Form):

    gender = (
        ('1','男'),
        ('0','女'),
    )
    username = forms.CharField(label='用户名',min_length=6,max_length=12,error_messages={"required":"用户名不可为空","min_length":"用户名最少为6位"})
    password1 = forms.CharField(label='密码', min_length=8, max_length=256, error_messages={"required":"密码不可为空","min_length":"密码最少为8位"},widget=forms.PasswordInput)
    password2 = forms.CharField(label='密码',min_length=8, max_length=256, error_messages={"required":"密码不可为空","min_length":"密码最少为8位"},widget=forms.PasswordInput)
    email = forms.EmailField(label='邮箱', error_messages={"required":"邮箱不可为空"})
    sex = forms.ChoiceField(label='性别', choices=gender)
    nickname = forms.CharField(label='昵称',max_length=12,error_messages={"required":"昵称不可为空"})
    photo = forms.ImageField(label='头像',error_messages={"required":"头像不可为空"})
    captcha = CaptchaField(label='验证码')

    def clean(self):
        pwd1 = self.cleaned_data.get('password1')
        pwd2 = self.cleaned_data.get('password2')

        if pwd1 != pwd2:
            self.add_error('password2','两次密码不一致')
            return None
        else:
            self.cleaned_data


#   登录表单
class LoginForm(forms.Form):

    username = forms.CharField(label='用户名',error_messages={"required": "用户名不可为空"})
    password = forms.CharField(label='密码', error_messages={"required": "密码不可为空"},widget=forms.PasswordInput)
    captcha = CaptchaField(label='验证码')

