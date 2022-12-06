<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 10/28/2017
 * Time: 10:07 PM
 */

namespace App\Http\Controllers\Site;

use App\Entity\Contact;
use App\Entity\Input;
use App\Entity\MailConfig;
use App\Entity\Post;
use App\Mail\Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Validator;

class ContactController extends SiteController
{
    public function __construct(){
        parent::__construct();
    }

    public function index() {

         return view('site.default.contact');
    }

    public function submit(Request $request) {
//        $validation = Validator::make($request->all(), [
//            'name' => 'required',
//            'phone' => 'required',
//            'email' => 'required|email',
//            'address' => 'required',
//            'message' => 'required',
//            'subject' => 'required',
//        ]);

        // if validation fail return error
//        if ($validation->fails()) {
//            return response([
//				'status' => 500,
//				'message' => 'Vui lòng điền đầy đủ thông tin!',
//			])->header('Content-Type', 'text/plain');
		 
			// return redirect(route('contact_home'))
                // ->withErrors($validation)
                // ->withInput();
//        }
        //success
        $message = $request->input('message');
        if (isset($request->service)){
            $message = $request->service . " - " . $request->input('message');
        }
        $contact = new Contact();
        $contact->insert([
            'name' => $request->input('name'),
            'phone' => $request->input('phone'),
            'email' => $request->input('email'),
            'address' => $request->input('address'),
            'message' => $message,
            'created_at' => new \DateTime(),
            'updated_at' => new \DateTime()
        ]);

        $success = 1;
//        $this->sendMainContact($request);

//		if ($request->has('is_upload_image') == 1) {
//			return redirect('/trang/cam-on-mua-thuoc-theo-toa');
//		}

        if($request->type == 'ajax'){
            return response()->json([
                'status' => 200,
                'message' => "Gửi thông tin liên hệ thành công."
            ], 200);
        }

        return view('site.default.contact', compact( 'success'));
    }


    private function sendMainContact($request)  {

        $subject =  'Có liên hệ mới từ website';
        $content = 'Anh '. $request->input('name').' Vừa liên hệ với bạn từ website';

        MailConfig::sendMail('', $subject, $content);
    }
}
