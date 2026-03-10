<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Mail\ContactFormMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class ContactController extends Controller
{
    public function send(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'    => 'required|string|max:100',
            'email'   => 'required|email|max:150',
            'message' => 'required|string|max:2000',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Please check your details and try again.',
                'errors'  => $validator->errors(),
            ], 422);
        }

        Mail::to(config('mail.church_email'))
            ->send(new ContactFormMail(
                senderName:  $request->name,
                senderEmail: $request->email,
                messageBody: $request->message,
            ));

        return response()->json([
            'message' => 'Your message has been sent. We will be in touch soon!',
        ]);
    }
}
