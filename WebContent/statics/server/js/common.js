/**
 * 实现了图片预览函数
 */
//上传图片后预览图片
function viewImage(file){
	var preview = document.getElementById('preview');
	if(file.files && file.files[0]){
		//火狐下
		if(file.files[0].name.endsWith(".jpg") 
				|| file.files[0].name.endsWith(".png")
				|| file.files[0].name.endsWith(".gif")){
			preview.style.display = "inline-block";
			preview.style.width = "400px";
			preview.style.height = "300px";
			preview.src = window.URL.createObjectURL(file.files[0]);
		}
		else{
			alert("您上传的图片格式不正确，请重新选择!"); 
			preview.style.display = 'none'; 
			file.value = "";
			return false; 
		}
	}else{
		//ie下，使用滤镜
		file.select();
		var imgSrc = document.selection.createRange().text;
		var localImagId = document.getElementById("localImag"); 
		//必须设置初始大小 
		localImagId.style.width = "200px"; 
		localImagId.style.height = "200px"; 
		try{ 
			localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			locem("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc; 
		}
		catch(e){ 
			alert("您上传的图片格式不正确，请重新选择!"); 
			preview.style.display = 'none'; 
			file.value = "";
			return false; 
		} 
	} 
	return true; 
}