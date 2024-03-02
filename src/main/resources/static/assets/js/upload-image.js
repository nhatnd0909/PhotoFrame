const selectImage = document.querySelector('.select-image');
const inputFile = document.querySelector('#file');
const imgArea = document.querySelector('.img-area');

selectImage.addEventListener('click', function () {
    inputFile.click();
})

inputFile.addEventListener('change', function () {
    const image = this.files[0]
    if (image.size < 2000000) {
        const reader = new FileReader();
        reader.onload = () => {
            const allImg = imgArea.querySelectorAll('img');
            allImg.forEach(item => item.remove());
            const imgUrl = reader.result;
            const img = document.createElement('img');
            img.src = imgUrl;
            imgArea.appendChild(img);
            imgArea.classList.add('active');
            imgArea.dataset.img = image.name;
        }
        reader.readAsDataURL(image);
    } else {
        alert("Image size more than 2MB");
    }
})

// 2

const selectImage2 = document.querySelector('.select-image2');
const inputFile2 = document.querySelector('#file2');
const imgArea2 = document.querySelector('.img-area2');

selectImage2.addEventListener('click', function () {
    inputFile2.click();
});

inputFile2.addEventListener('change', function () {
    const image = this.files[0];
    if (image.size < 2000000) {
        const reader = new FileReader();
        reader.onload = () => {
            const allImg = imgArea2.querySelectorAll('img');
            allImg.forEach(item => item.remove());
            const imgUrl = reader.result;
            const img = document.createElement('img');
            img.src = imgUrl;
            imgArea2.appendChild(img);
            imgArea2.classList.add('active');
            imgArea2.dataset.img = image.name;
        };
        reader.readAsDataURL(image);
    } else {
        alert("Image size more than 2MB");
    }
});

// 3
const selectImage3 = document.querySelector('.select-image3');
const inputFile3 = document.querySelector('#file3');
const imgArea3 = document.querySelector('.img-area3');

selectImage3.addEventListener('click', function () {
    inputFile3.click();
});

inputFile3.addEventListener('change', function () {
    const image = this.files[0];
    if (image.size < 2000000) {
        const reader = new FileReader();
        reader.onload = () => {
            const allImg = imgArea3.querySelectorAll('img');
            allImg.forEach(item => item.remove());
            const imgUrl = reader.result;
            const img = document.createElement('img');
            img.src = imgUrl;
            imgArea3.appendChild(img);
            imgArea3.classList.add('active');
            imgArea3.dataset.img = image.name;
        };
        reader.readAsDataURL(image);
    } else {
        alert("Image size more than 2MB");
    }
});

//Icon 
var maxAllowed = 3;
function toggleCheckbox(id) {
    var checkbox = document.getElementById(id);
    if (checkbox) {
        // Kiểm tra số lượng checkbox đã được chọn
        var checkedCheckboxes = document.querySelectorAll('input[name="icon"]:checked');
        if (checkedCheckboxes.length < maxAllowed || checkbox.checked) {
            checkbox.checked = !checkbox.checked;
            var imgContainer = checkbox.parentElement;
            if (checkbox.checked) {
                imgContainer.classList.add('checked');
            } else {
                imgContainer.classList.remove('checked');
            }
        } else {
            // Nếu đã đạt tới số lượng tối đa, không cho phép chọn thêm
            alert("Chỉ được chọn tối đa " + maxAllowed + " Icon!");
        }
    }
}