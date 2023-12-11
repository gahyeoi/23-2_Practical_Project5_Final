<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <style>
        .login-card {
            max-width: 400px;
            margin-top: 50px;
        }
        .login-button {
            background-color: #28a745;
        }
        .login-button:hover {
            background-color: #218838;
        }
    </style>
    <script>
        function validateForm() {
            var userid = document.getElementById('userid').value;
            var password = document.getElementById('password').value;

            if (userid !== 'gahyeoi' || password !== '1234') {
                alert('잘못 입력하셨습니다');
                location.reload();
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card login-card">
        <div class="card-body">
            <form method="post" action="loginOk" onsubmit="return validateForm()">
                <h2 class="card-title text-center mb-4">📝기억을 채우다</h2>
                <p>매일의 순간들을 글로 담아보세요.<br> 그 순간들이 서로 어우러져 당신의 삶을 그립니다.</p>
                <div class="mb-3">
                    <label for="userid" class="form-label">ID</label>
                    <input type="text" name="userid" class="form-control" id="userid" placeholder="Enter your ID">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Enter your Password">
                </div>
                <button type="submit" class="btn btn-primary btn-lg px-4 gap-3">로그인</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
