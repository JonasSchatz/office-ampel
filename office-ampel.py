import json
from typing import List

from flask import Flask, render_template, request
from unicornhatmini import UnicornHATMini

app = Flask(__name__)
unicornhatmini = UnicornHATMini()
unicornhatmini.set_brightness(0.2)
unicornhatmini.set_rotation(0)
width, height = unicornhatmini.get_shape()


@app.route('/')
def ampel():
    return render_template('ampel.html')


@app.route('/color', methods=['POST'])
def color():
	rgb_intensities: List[int] = json.loads(request.data)
	set_color(rgb_intensities)
	return ''


def set_color(intensities: List[int]):
	print(f'Setting new color: {intensities}')
	unicornhatmini.set_all(*intensities)
	unicornhatmini.show()
