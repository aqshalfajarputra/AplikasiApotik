<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Upload extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		//Do your magic here
	}

	public function index()
	{
		$this->load->view('upload_view');
	}
	public function upload(){
		$config['upload_path']='./upload/';
		$config['allowed_types']='gif|jpg|png';
		$config['max_size']='10000';

	//load library upload bawaan CI
	$this->load->library('upload', $config);

	if ($this->upload->do_upload('gambar')) {
		$data['notif'] = 'Upload sukses';
		$this->load->view('upload_view',$data);# code...
	}else{
		$data['notif'] = $this->upload->display_errors();
		$this->load->view('upload_view',$data);
		}

	}
}


/* End of file upload.php */
/* Location: ./application/controllers/upload.php */

?>
