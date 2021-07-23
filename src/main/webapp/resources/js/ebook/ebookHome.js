const contextPath = $("#contextPath").val();

function openEbookWizard() {
	let windowHeight = window.screen.height;
    let windowWidth = window.screen.width;
	let readerWidth = windowWidth * 0.9;
	let readerHeight = windowHeight * 0.9;
    let url = contextPath + "/ebook/openEbookWizard.do";
    let status = "width = "+ readerWidth + ", height = " + readerHeight;
    var reader = window.open(url, "ebookReader", status);
	reader.moveTo((windowWidth - readerWidth) / 2, (windowHeight - readerHeight) / 2);
};

const getEbookItems = () => {
	$.ajax({
		url: contextPath + "/ebook/getEBooksFromAPI.do",
		success: data => {
			let dataJSON = new X2JS().xml_str2json(data);
			console.log(dataJSON);
			
			let main = document.getElementsByTagName("main")[0];
			dataJSON.rss.channel.item.forEach((v,i) => {
				let ebookItem = document.createElement("div");
				ebookItem.style.backgroundColor = "white";
				ebookItem.style.width = "180px";
				ebookItem.style.height = "230px";
				
				let coverImg = document.createElement("img");
				coverImg.setAttribute("src", v.image);
				coverImg.style.width = "100px";

				let title = document.createElement("div");
				title.classList.add("ebookTitle");
				let titleText = v.title.replaceAll("<b>", "").replaceAll("</b>", "");
				titleText = titleText.substring(0, titleText.indexOf("(") === -1 ? titleText.length : titleText.indexOf("("));
				titleText = titleText.substring(0, titleText.indexOf("+") === -1 ? titleText.length : titleText.indexOf("+"));
				titleText = titleText.substring(0, titleText.indexOf("&") === -1 ? titleText.length : titleText.indexOf("&"));
				title.innerText = titleText;

				let author = document.createElement("div");
				author.classList.add("ebookAuthor");
				author.innerText = v.author;

				let publisher = document.createElement("div");
				publisher.classList.add("ebookPublisher");
				publisher.innerText = v.publisher

				ebookItem.appendChild(coverImg);
				ebookItem.appendChild(title);
				ebookItem.appendChild(author);
				ebookItem.appendChild(publisher);
				main.appendChild(ebookItem);
			});
			
		}
	});
}

window.onload = getEbookItems;