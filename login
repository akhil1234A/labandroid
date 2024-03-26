package com.example.loginan;
import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
public class MainActivity extends Activity {
EditText usr,pass;
Button btn;
 @Override
 protected void onCreate(Bundle savedInstanceState) {
 super.onCreate(savedInstanceState);
 setContentView(R.layout.activity_main);
 btn=(Button) findViewById(R.id.button1);
 usr= (EditText) findViewById(R.id.editText1);
 pass=(EditText) findViewById(R.id.editText2);
 btn.setOnClickListener(new OnClickListener(){
@Override
public void onClick(View arg0) {
// TODO Auto-generated method stub
if(usr.getText().length()>0 && pass.getText().length()>0)
{
String msg="username : " + usr.getText().toString() + "
password: " + pass.getText().toString();
Toast.makeText(MainActivity.this,msg,Toast.LENGTH_SHORT).show();
}
else{
String msg="username and password are not blank";
Toast.makeText(MainActivity.this,msg,Toast.LENGTH_SHORT).show();
 }
 }
 });
 }
} 
