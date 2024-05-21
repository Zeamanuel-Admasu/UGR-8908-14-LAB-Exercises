package com.example.counterapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        buttonIncrement.setOnClickListener {
            count++
            textViewCount.text = count.toString()
        }

        buttonDecrement.setOnClickListener {
            if (count > 0) {
                count--
            }
            textViewCount.text = count.toString()
        }

        buttonReset.setOnClickListener {
            count = 0
            textViewCount.text = count.toString()
        }
    }
}
