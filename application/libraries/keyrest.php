<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Keyrest
{
	public $keyrest = "ded934cc3d018351037ab45774ebda1d"; //md5("aadmiqdad")

    function key($key)
	{
		if ($key !="")
		{
			if ($key  == $this->keyrest)
			{
				return TRUE;
			}
			else
			{
				redirect(base_url());
				//echo "server korporasi hotel";
			}
		}
		else
		{
			redirect(base_url());
		}
	}
}

/* End of file */