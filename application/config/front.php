<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller {

	/**
	 * Front Controller.
	 * by: Komang.My.ID
	 */
	public function index()
		{
			$this->load->view('themes/header');
			$this->load->view('pages/home');
			$this->load->view('themes/footer');
		}
	public function why()
		{
			$this->load->view('themes/header');
			$this->load->view('pages/why');
			$this->load->view('themes/footer');
		}		
	public function services()
		{
			$this->load->view('themes/header');
			$this->load->view('pages/services');
			$this->load->view('themes/footer');
		}		
	public function about()
		{
			$this->load->view('themes/header');
			$this->load->view('pages/about');
			$this->load->view('themes/footer');
		}	
	public function contact()
		{
			$this->load->view('themes/header');
			$this->load->view('pages/contact');
			$this->load->view('themes/footer');
		}		
}