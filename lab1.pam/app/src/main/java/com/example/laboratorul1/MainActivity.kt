package com.example.laboratorul1

import android.annotation.SuppressLint
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity


class MainActivity : AppCompatActivity() {

    private var user_field: EditText? = null
    private var main_btn:  Button? = null
    private var result_info: TextView? = null





    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        user_field = findViewById(R.id.text_field)
        main_btn = findViewById(R.id.button_result)
        result_info = findViewById(R.id.result_text)




        main_btn?.setOnClickListener {
            if(user_field?.text?.toString()?.trim()?.equals("")!!)
                Toast.makeText(this,"Introduceti textul", Toast.LENGTH_LONG).show()
            else {
                var words  = 0
                for( word in user_field?.text.toString().split(" ")){
                    if(word.contains('a'))words++
                }
                result_info?.text = "Cuvintele cu litera  a: $words"
                 }
            }
        }
    }













