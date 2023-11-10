// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';

class ApiSource {
  final Dio dio = Dio();
  final String BASE_ROUTE = "https://api.dsfootball.io/v2";
  ApiSource() {
    setHeaders();
  }
  void setHeaders() {
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Access-Control-Allow-Headers'] =
        'Access-Control-Allow-Origin,Accept,Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale';
    dio.options.headers['Access-Control-Allow-Credentials'] = true;
    dio.options.headers['Access-Control-Allow-Methods'] = 'GET,POST,OPTIONS';
    dio.options.headers['Access-Control-Allow-Origin'] = '*';
    dio.options.headers['Authorization'] =
        'Bearer eyJraWQiOiJDV3hITVRoQ1wva0lyYk01cEJubDRjUWVnUU1ORzB3azRYYXU4SmE2YmQyMD0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI3ZTgyZDQ1NC02ODAxLTQ5ZTMtOGViZi05YThjZTkxNzBjYTYiLCJhdWQiOiI3aW04ZTE5OHFsZmlwMmIyZjhnOWhtamV2aSIsImV2ZW50X2lkIjoiYmIzM2QwNmEtMjM2NS00NzY0LTlmOTgtNzI4OGEzMmYyN2ZiIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2OTk1NzA4MzYsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC51cy1lYXN0LTEuYW1hem9uYXdzLmNvbVwvdXMtZWFzdC0xX3FXTm1oNTVzbiIsInBob25lX251bWJlcl92ZXJpZmllZCI6dHJ1ZSwiY29nbml0bzp1c2VybmFtZSI6IjdlODJkNDU0LTY4MDEtNDllMy04ZWJmLTlhOGNlOTE3MGNhNiIsInBob25lX251bWJlciI6Iis1NTIxOTY3MTAzNDg4IiwiZXhwIjoxNjk5NTk1MDM5LCJpYXQiOjE2OTk1OTE0Mzl9.K7AtHPk-kb_o26tuAc6_q11jW1k325r1LJqrEi7iKcsYNBZSfGvAA0QiGojz7nbC0y_tqxKXcsZAYEjWP7ro_4SjoXrf22lGQIO1FjrnEBQgyVmKiC3woGZHN6DXWlQeCyXGCEMtqniDtm6lWYmM5dgJ-1vDfVW8CKP_x_Dtk0P7ez_XBqZQLRXpZ9s8KE3u2CG-kHmj7Rl3RbGWFjVUOaDfGDvj2ZqwtWgIg-mQjnzGPhwAj9SPYuwnFUVefz4KlhSHMUZevQNmaZrH0UcTccZQxxhhdaO2n9I5Yg5oZMBXAA0_ykM4qaptreExzgW2gJddoWpPMm-G51K87rsxmA';
    // 'Bearer eyJraWQiOiJDV3hITVRoQ1wva0lyYk01cEJubDRjUWVnUU1ORzB3azRYYXU4SmE2YmQyMD0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI3ZTgyZDQ1NC02ODAxLTQ5ZTMtOGViZi05YThjZTkxNzBjYTYiLCJhdWQiOiI3aW04ZTE5OHFsZmlwMmIyZjhnOWhtamV2aSIsImV2ZW50X2lkIjoiYmIzM2QwNmEtMjM2NS00NzY0LTlmOTgtNzI4OGEzMmYyN2ZiIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2OTk1NzA4MzYsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC51cy1lYXN0LTEuYW1hem9uYXdzLmNvbVwvdXMtZWFzdC0xX3FXTm1oNTVzbiIsInBob25lX251bWJlcl92ZXJpZmllZCI6dHJ1ZSwiY29nbml0bzp1c2VybmFtZSI6IjdlODJkNDU0LTY4MDEtNDllMy04ZWJmLTlhOGNlOTE3MGNhNiIsInBob25lX251bWJlciI6Iis1NTIxOTY3MTAzNDg4IiwiZXhwIjoxNjk5NTk1MDM5LCJpYXQiOjE2OTk1OTE0Mzl9.K7AtHPk-kb_o26tuAc6_q11jW1k325r1LJqrEi7iKcsYNBZSfGvAA0QiGojz7nbC0y_tqxKXcsZAYEjWP7ro_4SjoXrf22lGQIO1FjrnEBQgyVmKiC3woGZHN6DXWlQeCyXGCEMtqniDtm6lWYmM5dgJ-1vDfVW8CKP_x_Dtk0P7ez_XBqZQLRXpZ9s8KE3u2CG-kHmj7Rl3RbGWFjVUOaDfGDvj2ZqwtWgIg-mQjnzGPhwAj9SPYuwnFUVefz4KlhSHMUZevQNmaZrH0UcTccZQxxhhdaO2n9I5Yg5oZMBXAA0_ykM4qaptreExzgW2gJddoWpPMm-G51K87rsxmA';
    // 'Bearer eyJraWQiOiJDV3hITVRoQ1wva0lyYk01cEJubDRjUWVnUU1ORzB3azRYYXU4SmE2YmQyMD0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI3ZTgyZDQ1NC02ODAxLTQ5ZTMtOGViZi05YThjZTkxNzBjYTYiLCJhdWQiOiI3aW04ZTE5OHFsZmlwMmIyZjhnOWhtamV2aSIsImV2ZW50X2lkIjoiYmIzM2QwNmEtMjM2NS00NzY0LTlmOTgtNzI4OGEzMmYyN2ZiIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2OTk1NzA4MzYsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC51cy1lYXN0LTEuYW1hem9uYXdzLmNvbVwvdXMtZWFzdC0xX3FXTm1oNTVzbiIsInBob25lX251bWJlcl92ZXJpZmllZCI6dHJ1ZSwiY29nbml0bzp1c2VybmFtZSI6IjdlODJkNDU0LTY4MDEtNDllMy04ZWJmLTlhOGNlOTE3MGNhNiIsInBob25lX251bWJlciI6Iis1NTIxOTY3MTAzNDg4IiwiZXhwIjoxNjk5NTg3MDI0LCJpYXQiOjE2OTk1ODM0MjR9.ESEcyFOomEf1sOzdfDBbJd3o90cdaCiUNZ_YoNVk-sf6yvh7nGui_lHD-vpm7u2Fj9dFgDuVYxKjreYKz7Wi2CqG1ZVO8ULMINVBz6ExY-C221Ds6WrVTloHV6-645-qygUkJG1iEAXXsvFMqdyiF4xrGXnGh8RXkH8l6FmTlpfRwda2yVTGrcfsNUGP3ErAZWR4LixikYOFcfX-8KHOh0Fdnb1smhP-BpHCyAin6HXHXBtukDqIdCF8PDSPzlGW4pt_YFldVBYlDWzOY-EboupCC0hQ8ohCd8KQoX-QNGPNaN51KKjOj-t40gF3D5cY_NouEvgoy9f7VDGs1wzExw';
    // 'Bearer eyJraWQiOiJDV3hITVRoQ1wva0lyYk01cEJubDRjUWVnUU1ORzB3azRYYXU4SmE2YmQyMD0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI3ZTgyZDQ1NC02ODAxLTQ5ZTMtOGViZi05YThjZTkxNzBjYTYiLCJhdWQiOiI3aW04ZTE5OHFsZmlwMmIyZjhnOWhtamV2aSIsImV2ZW50X2lkIjoiYmIzM2QwNmEtMjM2NS00NzY0LTlmOTgtNzI4OGEzMmYyN2ZiIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2OTk1NzA4MzYsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC51cy1lYXN0LTEuYW1hem9uYXdzLmNvbVwvdXMtZWFzdC0xX3FXTm1oNTVzbiIsInBob25lX251bWJlcl92ZXJpZmllZCI6dHJ1ZSwiY29nbml0bzp1c2VybmFtZSI6IjdlODJkNDU0LTY4MDEtNDllMy04ZWJmLTlhOGNlOTE3MGNhNiIsInBob25lX251bWJlciI6Iis1NTIxOTY3MTAzNDg4IiwiZXhwIjoxNjk5NTc0NDM2LCJpYXQiOjE2OTk1NzA4MzZ9.c9PpgPDSuR1MAuRriJv6edoTkRgaB-6d8A7tn2lbCPMlTrESOv8AYv3T_PvPPnc6faFBOqaRgxfXgp8t3G0EopvdV2sIvFEsLLRv982hYbvilMzI9U-oyd9DODUghmyNq3-jsH0ieLbmqiVws2cMqJ2mwiaRUPEfUtOClMBy9ofDGQGBW3hHWCnu0qiPXb0BXLUnrpu9SW9cPj7sN0XtFjtw3S_bWjfk1MWMmZ8iWwAz11SSiWW2S_cX6zJ_Liz_HvD4auzOdFMOt2HMi2ClwROuhnTy2qGBW8yIsSpYgbLUHuihGA1hbLrMnVpqPZuOp6sifaD9Oekd0ZHlle65sA';
  }
}
