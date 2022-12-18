<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>         


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 내역</title>

<style type="text/css">
* {
    box-sizing: border-box;
}
div {
    display: block;
}
body {
	font-family: 'Inter', 'AppleSDGothicNeo', 'AppleSDGothicNeo-Regular', 'Apple Gothic', 'Noto Sans KR', 'Malgun Gothic', Arial, Helvetica, serif , sans-serif;
    font-size: 14px;
    font-weight: 400;
    color: #333;
    word-break: break-all;
    line-height: 1;
    letter-spacing: -.4px;
}
table {
    width: 100%;
    table-layout: fixed;
    border-collapse: collapse;
    border-spacing: 0;
}


colgroup {
    display: table-column-group;
}
col {
    display: table-column;
}

/* a */
a {
    color: #333;
    text-decoration: none;
}
a:hover {
	color: #0056b3;
}
a.txt {
    font-size: 13px;
    display: inline-block;
    position: relative;
    line-height: 1;
}
a.txt.arrow_r {
    padding-right: 13px;
}
a.txt:after {
    position: absolute;
    top: 0;
    right: 0;
}
em {
    color: #5e2bb8;
}
.txt.arrow_r:after {
    width: 7px;
    height: 12px;
    background-position: -30px 0;
    top: 1px;
}
.icn:before, .form_holder button.calandar:after, .air_time em:before, .visual_wrap.fnd .search_field .box_search .input_keyword:before, .mileage_profit li:before, .submain .zeus_news .banner_wrap .cont .btn:after, .prod_list_wrap .type .route_type .item_route:before, .prod_list_wrap .htl .login_guide:before, .submain .service_center li a:before, .submain .service_center li a:after, .submain .brochure_list + .btn_wrap .btn:after, .step_wrap .step li .num:before, .form_holder.calendar button {
    display: inline-block;
    content: '';
    background-repeat: no-repeat;
    background-image: url(https://image.hanatour.com/usr/static/img2/pc/com/spr_icn.png);
}

/* input */
input[type=text], input[type=number], input[type=date], input[type=password] {
    height: 42px;
    padding: 0 15px;
    border: 1px solid #cdcdcd;
    background-color: #fff;
    border-radius: 2px;
}

/* btn */
.btn {
    position: relative;
    display: inline-block;
    height: 25px;
    line-height: 23px;
    font-size: 12px;
    padding: 0 10px;
    margin: 0;
    color: #666;
    background-color: #fff;
    font-weight: 400;
    text-align: center;
    border-radius: 4px;
    border: solid 1px #c2c2c2;
}
.btn::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: #fff;
    z-index: 1;
    border-radius: 5px;
    transition: transform 0.5s;
    transition-timing-function: ease;
    transform-origin: 0 0;
    transition-timing-function: cubic-bezier(0.5, 1.6, 0.4, 0.7);
    transform: scaleX(0);
    border-radius: 0;
}
.btn.big {
    min-width: 140px;
    height: 56px;
    line-height: 54px;
    font-size: 17px;
    padding: 0 35px;
}
.btn.gray {
    color: #fff !important;
    border: solid 1px #5b606e;
    background-color: #5b606e;
}
.btn.pink, .form_holder .btn.pink {
    color: #fff !important;
    border: solid 1px #5e2bb8;
    background-color: #5e2bb8;
}
.btn.icn {
    background: none;
}
.btn.icn span {
    display: inline-block;
    position: relative;
}
.btn.line, .search_field .btn.line, .form_holder .btn.line {
    color: #5e2bb8 !important;
    border: solid 1px #c2c2c2;
}

span.btn, .btn:disabled {
    border-color: #ccc;
    background-color: transparent;
    opacity: .5;
}
.search_field .btn, .form_holder .btn, .form_holder .select_item, .form_holder .divider, .cal_wrap .divider, .cal_wrap .btn, .form_holder input + input, .form_holder .select_item + input, .cal_wrap .select_item {
    float: left;
    height: 42px;
    line-height: 40px;
    margin-left: 8px;
    font-size: 13px;
    color: #333;
}
.search_field .btn, .form_holder .btn, .cal_wrap .btn {
    min-width: 90px;
}
/* container */
#container > .inr {
    width: 1200px;
    margin: 50px auto 0;
    min-height: 1100px;
}

/* lnb */
#lnb.lnb {
    width: 150px;
    margin-right: 40px;
    float: left;
    overflow: hidden;
}
#lnb.lnb dl > dt {
    height: 57px;
    font-size: 26px;
    font-weight: 700;
    border-bottom: 2px solid #111;
    padding-bottom: 29px;
    color: #111;
}
#lnb.lnb dl > dt.type {
    font-size: 24px;
    letter-spacing: -2px;
}
#lnb.lnb ul.list_lnb > li {
    border-bottom: 1px solid #ddd;
    line-height: 50px;
}
#lnb.lnb ul.list_lnb > li li {
    height: 34px;
    line-height: 34px;
}
#lnb.lnb ul.list_lnb a {
    display: block;
}
#lnb.lnb ul.list_lnb > li > a {
    height: 50px;
    line-height: 48px;
    font-size: 15px;
}
#lnb.lnb + .contents {
    float: right;
    width: 1010px;
}

/* dl, dt, dd */
dl {
    margin-top: 0;
    margin-bottom: 20px;
}
dt, dd {
    line-height: 1;
}

/* contents */
.contents {
    min-height: 350px;
}

/* text_wrap */
.text_wrap {
    position: relative;
    margin: 40px 0 0;
    padding: 0;
}
.text_wrap:after {
    content: '';
    display: block;
    clear: both;
}
.text_wrap.type {
    display: table;
    width: 100%;
}
.text_wrap.big {
    margin-top: 60px;
    margin-bottom: 30px;
}
.text_wrap.big.fix, .text_wrap.fix {
    margin: 0;
    height: 55px;
}
.text_wrap.sml {
    margin-top: 24px;
    margin-bottom: 18px;
}
.text_wrap.sml strong.tit {
    font-size: 15px;
    font-weight: 400;
    color: #111;
}
.text_wrap strong.tit {
    display: inline-block;
    font-size: 15px;
    line-height: 1;
    font-weight: 400;
    color: #111;
}
.text_wrap.type strong.tit {
    display: table-cell;
    vertical-align: middle;
}
.text_wrap.fix strong, .text_wrap.big strong.tit {
    font-size: 22px;
    font-weight: 600;
    color: #111;
}
.text_wrap .right_cont .txt.arrow_r {
    margin-right: 5px;
}
.text_wrap.type .right_cont a.txt.arrow_r {
    top: 5px;
}
.text_wrap.fix + .cont_unit, .text_wrap.fix + .tbl, .text_wrap.fix + .js_tabs {
    margin-top: 0 !important;
}
.text_wrap.inquiry {
    width: 100%;
    margin-bottom: 15px;
}
.text_wrap.inquiry .inr.right_cont {
    position: relative;
    float: right;
    overflow: visible;
    width: 524px;
}
.text_wrap.inquiry dt.label {
    float: left;
    line-height: 36px;
    color: #333;
    padding-right: 16px;
}
.text_wrap .right_cont .form_holder button.calandar {
    height: 36px;
    line-height: 36px;
    min-height: 36px;
}
.text_wrap .right_cont .search_field .btn, .text_wrap .right_cont .form_holder .btn, .text_wrap .right_cont .form_holder .divider, .text_wrap .right_cont .cal_wrap .btn, .option_wrap .right_cont .search_field .btn, .option_wrap .right_cont .form_holder .btn, .option_wrap .right_cont .form_holder .divider {
    height: 36px;
    line-height: 30px;
}
.text_wrap.mid {
    margin-top: 40px;
    margin-bottom: 24px;
}
.text_wrap.mid strong.tit {
    font-size: 17px;
    color: #111;
    font-weight: 200;
}

/* fontCtrl */
.fontCtrl .text_wrap.mid strong.tit {
    font-size: 22px;
}
.fontCtrl .text_wrap.sml strong.tit {
    font-size: 17px;
}


/* tbl */
.tbl {
	position: relative;
    table-layout: fixed;
    display: table;
    width: 100%;
}
.tbl .board_type {
    width: 100%;
    border-bottom: 1px solid #ddd; 
    border-collapse: separate;
    table-layout: fixed;
    font-size: 15px;
}
.tbl table.board_type {
    border-top: 1px solid #999;
}

.little_table{
	border-bottom: none;
}
.tbl th {
	background-color: #f7f7f7;
    font-size: 15px;
    font-weight: 600;
    color: #111;
}
.tbl td {
    position: relative;
    color: #333;
    font-size: 15px;
    font-weight: 400;
}
.tbl th, .tbl td {
    text-align: left;
    min-height: 54px;
    padding: 15px 20px;
    line-height: 23px;
}
.tbl table.board_type th, .tbl table.board_type td {
    padding: 13px;
    text-align: center;
    border-bottom: 1px solid #ddd;
    color: #333;
}
.tbl tbody {
    position: relative;
}
.tbl table.board_type tr:last-child td {
    border-bottom: 0;
}
.tbl table.type2 th {
    border-top: 1px solid #ddd;
    border-right: 1px solid #ddd;
}
.tbl table.type2 tr:first-child th, .tbl .type2 tr:first-child td {
    border-top: 1px solid #999;
}
.tbl table.type2 td {
    border-top: 1px solid #ddd;
}
.tbl table.type2 tr:first-child th, .tbl .type2 tr:first-child td {
    border-top: 1px solid #999;
}
.tbl>.text_wrap {
    margin-top: 0;
}

/* data_no */
.data_no {
    display: table;
    width: 100%;
    min-height: 172px;
    text-align: center;
}
.data_no .cont {
    display: table-cell;
    vertical-align: middle;
}
.data_no .cont strong {
    position: relative;
    display: block;
    padding-top: 70px;
    color: #333;
    line-height: 1.6;
    font-size: 17px;
    font-weight: 400;
}
.data_no .cont strong:before {
    content: "";
    display: inline-block;
    width: 45px;
    height: 45px;
    position: absolute;
    top: 5px;
    left: 50%;
    margin-left: -22px;
    background: url(https://image.hanatour.com/usr/static/img2/pc/com/spr_icn.png) no-repeat;
    background-position: 0 -205px;
}

/* right_cont */
.right_cont {
    float: right;
}

/* ly_tbl */
.ly_tbl {
    display: table;
    width: 100%;
}
.ly_tbl .inr {
    display: table-cell;
}
.ly_tbl .inr.w526 {
    width: 574px;
    padding-right: 48px;
}
.ly_tbl .default_list li {
    padding: 15px 0 16px;
}
/* my_qna */
.my_qna .inr {
    float: left;
    display: block;
}
.my_qna .inr + .inr {
    width: 436px;
}
.my_qna .inr .default_list {
    min-height: 108px;
}
.my_qna .inr .default_list li .data_no {
    display: block;
    min-height: 109px;
}
.my_qna .inr .default_list .cont {
    display: block;
}
/* default_list */
.default_list {
    border-top: 1px solid #838999;
}
.default_list>li {
    position: relative;
    border-bottom: 1px solid #dadce1;
    padding: 16px 10px;
}

/* box_group */
.box_group {
    display: table;
    width: 100%;
    margin-top: 15px;
    padding: 0;
    border-radius: 0;
    border: 1px solid #ddd;
}
.box_group > li {
    display: table-cell;
    width: 33%;
    padding: 35px 0 30px;
    text-align: center;
    cursor: pointer;
}
.box_group > li + li {
    border-left: 1px solid #ddd;
}
.box_group > li .text_wrap.sml {
    margin: 20px 0 0;
}
.box_group .icn, .icon_txt .icn {
    width: 40px;
    height: 40px;
    background: url(https://image.hanatour.com/usr/static/img2/pc/mpg/spr_mpg.png) no-repeat;
}
.box_group > li .text_wrap.sml {
    margin: 20px 0 0;
}

/* icn */
.icn {
    display: inline-block;
    position: relative;
}
.icn.mpg1 {
    background-position: -451px -125px;
}
.icn.mpg2 {
    background-position: -270px -125px;
}
.icn.mpg3 {
    background-position: -315px -125px;
}

/* mt */
.mt0 {
    margin-top: 0px !important;
}
.mb15 {
    margin-bottom: 15px !important;
}
.mb30 {
    margin-bottom: 30px !important;
}

/* js_tabs */
.js_tabs {
    position: relative;
    margin-bottom: 40px;
}

/* tabs */
.tabs {
    overflow: hidden;
}
.tabs>li {
    float: left;
    position: relative;
    border-top: none;
    text-align: center;
    height: 59px;
    line-height: 59px;
    border: 1px solid #dcdcdc;
    border-bottom: 1px solid #111;
    z-index: 1;
}
.tabs>li:after {
    content: '';
    position: absolute;
    left: -1px;
    bottom: 0;
    right: -1px;
    height: 0;
}
.tabs>li + li {
    border-left: none;
}
.tabs>li>a {
    display: block;
    height: 100%;
    color: #111;
    font-size: 18px;
    line-height: 57px;
    font-weight: 400;
}
.tabs>li.selected {
    border-color: #5e2bb8;
    border-left: 1px solid #5e2bb8;
    z-index: 2;
}
.tabs>li.selected>a {
    color: #fff;
    background-color: #5e2bb8;
    font-weight: 600;
}

/* type1 */
.type1 .tabs>li {
    display: table;
    height: 52px;
    line-height: 52px;
    border-width: 1px 0 0 1px;
    border-color: #ddd;
    border-style: solid;
    background-color: #fff;
}
.type1 .tabs>li:after {
    height: 1px;
    background-color: #111;
}
.type1 .tabs>li>a {
    color: #333;
    font-size: 15px;
    line-height: 20px;
    vertical-align: middle;
}
.type1 > .tabs>li>a {
    display: table-cell;
}
.type1 .tabs>li.selected {
    border-color: #111;
    border-right: 1px solid #111;
}
.type1 .tabs>li.selected>a {
    color: #5e2bb8;
    background-color: #fff;
}
.type1 .tabs>li.selected+li {
    border-left-color: #fff;
}
.type1 .tabs>li.selected:after {
    background-color: #fff;
    left: 0;
    right: 0;
}
.type1 .tabs>li:last-child {
    border-right: 1px solid #ddd;
}
.type1 .tabs>li.selected:last-child {
    border-right: 1px solid #111;
}

/* panels */
.panels {
    position: relative;
    padding: 30px 0 0;
}
.panels .panel {
    display: none;
}
.panels .panel.selected {
    display: block;
}

/* form_holder */
.form_holder {
    position: relative;
    vertical-align: top;
}
.form_holder button.calandar {
    height: 42px;
    padding: 0 45px 0 15px;
    color: #aaa;
    font-size: 13px;
    border: 1px solid #cdcdcd;
    background-color: #fff;
    text-align: left;
    border-radius: 2px;
    position: relative;
}
.form_holder input[type='text'], .form_holder input[type='password'], .form_holder .select_item, .form_holder button.calandar {
    float: left;
}
.form_holder button.calandar:after {
    display: block;
    content: '';
    width: 20px;
    height: 20px;
    margin: 0px 0 0 4px;
    background-position: -209px 0;
    position: absolute;
    top: 8px;
    right: 15px;
}

/* fl */
.fl {
    float: left;
}

/* list_sort */
.list_sort>li {
    float: left;
}
.list_sort li {
    margin-left: 20px;
}
.list_sort a {
    color: #333;
}
.list_sort li.on a {
    border-color: #5e2bb8;
    color: #5e2bb8;
}
.list_sort:after {
    content: '';
    display: table;
    clear: both;
}

/* ly_wrap */
.ly_wrap {
    width: 100%;
}
.ly_wrap .inr {
    width: 50%;
    float: left;
}
.ly_wrap .inr.right {
    float: right;
    width: 306px;
}
.ly_wrap.pay_info {
    border-top: 2px solid #111;
}
.ly_wrap.pay_info > .inr {
    width: 870px;
}

ly_wrap.pay_info > .inr.right {
    width: 306px;
    transition: bottom .3s ease-out;
}

/* pay_info */
.pay_info > .inr .text_wrap.mid .tit {
    line-height: 30px;
}
.pay_info > .inr.right > .text_wrap.mid {
    margin-bottom: -5px;
}
.pay_info .js_acc.filter_wrap {
    overflow: hidden;
    overflow-y: auto;
    margin-top: 25px;
    border-top: none;
}
.pay_info > .inr.right .pay_area {
    border-top: 1px solid #ddd;
    padding: 15px 20px 20px;
    background: #f7f7f7;
    border-bottom: 1px solid #ddd;
}
.pay_info .info_area .info {
    position: relative;
    margin-top: 5px;
    text-align: right;
    color: #111;
}
.pay_info .info_area .info span {
    font-size: 14px;
}
.pay_info .info_area .info .tit {
    position: absolute;
    left: 0;
    font-weight: 400;
    text-align: left;
}
.pay_info .info_area.total .info {
    min-height: 14px;
    margin-top: 0;
    padding-bottom: 10px;
}
.pay_info .info_area .mileage_save {
    margin-top: 10px;
    text-align: right;
}
.pay_info .info_area .mileage_save p {
    font-size: 13px;
    color: #666;
}
.pay_info .info_area.total .price {
    display: block;
    margin-top: 15px;
    font-size: 26px;
    color: #5e2bb8;
    text-align: right;
}
.pay_info .info_area.total .price span {
    font-size: 15px;
    font-weight: 400;
}
.pay_info .info_area:not(:first-child) {
    margin-top: 20px;
    padding-top: 20px;
    border-top: 1px dashed #ddd;
}
.pay_info .info_area .info:first-child {
    margin-top: 0;
}
/* divider_dot */
.divider_dot {
    position: relative;
    padding-left: 9px;
    display: inline-block;
    margin-left: 5px;
    min-height: 13px;
}
.divider_dot:before {
    width: 3px;
    height: 3px;
    border-radius: 50%;
    background-color: #ccc;
    position: absolute;
    top: 50%;
    left: 0;
    margin-top: -2px;
}

/* sns_linkage */
.sns_linkage {
    width: 800px;
    margin: 70px auto 0;
    display: table;
}
.sns_linkage .inr {
    float: none;
    width: 400px;
    text-align: center;
    display: table-cell;
    vertical-align: middle;
}
.sns_linkage .inr .name {
    display: block;
    width: 90px;
    height: 90px;
    border-radius: 50%;
    background-color: #f7f7f7;
    font-size: 22px;
    color: #111;
    font-weight: 600;
    margin: 0 auto;
    line-height: 90px;
}
.sns_linkage .inr .email {
    margin-top: 5px;
}
.sns_linkage .inr.right {
    border-left: 1px solid #ddd;
    padding-left: 65px;
}
.sns_linkage .inr.right .btn {
    display: block;
    margin: 10px 0 0;
}
.sns_linkage .inr.right .btn:first-child {
    margin-top: 0;
}
.sns_linkage .inr.right .btn_wrap {
    margin: 0;
}

/* btn_wrap */
.btn_wrap {
    text-align: center;
    margin-top: 30px;
}
.btn_wrap .btn {
    min-width: 120px;
    height: 46px;
    line-height: 44px;
    font-size: 15px;
    color: #333;
    padding: 0 30px;
}

/* ul */
ul.btn_wrap li {
    float: left;
    width: 250px;
    padding-bottom: 10px;
}
ul.btn_wrap li .btn {
    padding-left: 58px;
    text-align: left;
}
ul.btn_wrap li .btn.icn span:before {
    width: 20px;
    height: 20px;
    margin-right: 15px;
    background: url(https://image.hanatour.com/usr/static/img2/pc/mpg/spr_mpg.png) no-repeat;
    vertical-align: middle;
}

ul.btn_wrap li .btn.icn .member:before {
    background-position: 0 -262px;
}
ul.btn_wrap li .btn.icn span:before {
    width: 20px;
    height: 20px;
    margin-right: 15px;
    background: url(https://image.hanatour.com/usr/static/img2/pc/mpg/spr_mpg.png) no-repeat;
    vertical-align: middle;
}

/* step_wrap */
.step_wrap {
    text-align: center;
}
.step_wrap .step {
    display: inline-block;
}
.step_wrap .step li {
    position: relative;
    float: left;
    font-size: 15px;
    text-align: center;
}
.step_wrap .step li.on {
    color: #5e2bb8;
}
.step_wrap .step li span {
    padding-top: 6px;
}
.step_wrap .step li .num {
    padding-left: 35px;
    position: relative;
    display: inline-block;
}
.step_wrap .step li .num:before {
    width: 25px;
    height: 25px;
    position: absolute;
    left: 0;
    top: 0;
}
.step_wrap .step li.on .num.num1:before {
    background-position: -27px -365px;
}
.step_wrap .step li .num.num2:before {
    background-position: -54px -365px;
}
.step_wrap .step li .num.num3:before {
    background-position: -108px -365px;
}
.step_wrap .step li .num.num3:after {
   content: none;
}
.step_wrap .step:after {
    content: '';
    display: table;
    clear: both;
}
.step_wrap .step li .step_txt:after {
    content: '';
    display: inline-block;
    width: 50px;
    height: 2px;
    margin-left: 15px;
    margin-right: 15px;
    margin-bottom: 5px;
    background-color: #eee;
}
.icn:before, .form_holder button.calandar:after, .air_time em:before, .visual_wrap.fnd .search_field .box_search .input_keyword:before, .mileage_profit li:before, .submain .zeus_news .banner_wrap .cont .btn:after, .prod_list_wrap .type .route_type .item_route:before, .prod_list_wrap .htl .login_guide:before, .submain .service_center li a:before, .submain .service_center li a:after, .submain .brochure_list + .btn_wrap .btn:after, .step_wrap .step li .num:before, .form_holder.calendar button {
    display: inline-block;
    content: '';
    background-repeat: no-repeat;
    background-image: url(https://image.hanatour.com/usr/static/img2/pc/com/spr_icn.png);
}


.repair{
 background-color: #66B2FF;
 color:white;
 
 }
.modal_wrap {
        display: none;
        width: 800px;
        height: 600px;
        position: absolute;
        top: 50%;
        left: 40%;
        margin: 0 auto;
        background:#eee;
        z-index: 999;
 }
.black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
 } 
 
 .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
 }
 
 .modal_close> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
 	}  
}
</style>

</head>
<body>
	<div id="container">
		<div class="inr">
			<!-- 카테고리 -->
			<div class="lnb" id="lnb">
				<div class="inr">
					<dl>
						<dt class="type"><a href="${pageContext.request.contextPath}/member/myPageReservPackage">마이페이지</a></dt>
						<dd>
							<ul class="list_lnb">
							    <li id="EM00000196" class="">
							        <a href="${pageContext.request.contextPath}/member/myPageReservPackage" id="/com/mpg/CHPC0MPG0200M200">예약내역</a>
							        <!---->
							    </li>
							    <li id="EM00000203" class="">
							        <a href="${pageContext.request.contextPath}/member/myPageLikePackage" id="/com/sbk/CHPC0COM0300M200">찜</a>
							        <!---->
							    </li>
							    <li id="EM00000224">
							        <a href="${pageContext.request.contextPath}/member/myPageCouponPackage">쿠폰함</a>
							    </li>
							    <li id="EM00002140" class="">
							        <a href="${pageContext.request.contextPath}/member/myPageFAQ" id="/com/cuc/CHPC0CUC0001M200">자주찾는 질문</a>
							        <!---->
							    </li>
							    <li id="EM00002141" class="">
							        <a href="${pageContext.request.contextPath}/member/myPageReviewPackage" id="/com/mpg/CHPC0MPG0403M200">My 상품평</a>
							        <!---->
							    </li>
							    <li id="EM00000234" class="">
							        <a href="${pageContext.request.contextPath}/member/myPagePrivacy" id="/com/mpg/CHPC0MPG0105M200">개인정보</a>
							        <!---->
							    </li>
							</ul>
						</dd>
					</dl>	
				</div>	<!-- inr -->
			</div>	<!-- lnb -->
			<div class="contents" id="contents">
				<div class="text_wrap big fix">
					<strong class="tit">예약내역</strong>
				</div>	<!-- text_wrap big fix -->
				<div class="js_tabs type1 v-tabs nojq">
				    <ul class="tabs">
				        <li class="fx-cobrand-pkg" style="width: 25%;"><a href="${pageContext.request.contextPath}/member/myPageReservPackage">패키지</a></li>
				        <li class="fx-cobrand-htl" style="width: 25%;"><a href="${pageContext.request.contextPath}/member/myPageReservHotel">호텔</a></li>
				        <li class="selected fx-cobrand-wt" style="width: 25%;"><a href="${pageContext.request.contextPath}/member/myPageReservAir">항공</a></li>
				        <li class="fx-cobrand-fnd" style="width: 25%;"><a href="${pageContext.request.contextPath}/member/myPageReservTicket">투어/입장권</a></li>
				    </ul>
				</div>
				
				<div class="js_tabs type2 no_division">
				<form action="/airport/airInfoModify" method="post">
					<div class="panels">
					    <div class="panel selected">					        
					        <div class="tbl">
					            <table class="board_type">
					                <colgroup>
					                    <col style="width: 14%;" />
					                    <col />
					                    <col style="width: 14%;" />
					                    <col style="width: 8%;" />
					                    <col style="width: 12%;" />
					                </colgroup>
					                <thead>
					                    <tr>
					                        <th>예약일</th>
					                        <th>예매번호</th>
					                        <th>좌석등급</th>
					                        <th>예매가</th>
					                        <th>항공편</th>
					                        <th>출발공항</th>
					                        <th>도착공항</th>		                        
					                        <th>출발일</th>
					                        <th>탑승객정보</th>
					                    </tr>
					                </thead>
					                <tbody>
					                <c:if test="${airReservList != null}">
					                <c:forEach var="reserve" items="${airReservList}">
				               		
					                	<tr>
					                		<td><fmt:formatDate value="${reserve.reservation_date}" pattern="yy-MM-dd"/></td>
					                		<td>${reserve.reservation_id }
					                		
					                		</td>
					                		
					                		<td>${reserve.seat_position }</td>
					                		<td>${reserve.reservation_price }</td>
					            
					                			<td><table class="little_table">
					                		<c:forEach items="${reserve.air_flightSchDTO }" var="flight">
					                			<tr><td>${flight.air_ScheduleDTORM.airplane_name }</td></tr>     			
					                		</c:forEach>
					                			</table></td>
					                				<td><table class="little_table">
					                		<c:forEach items="${reserve.air_flightSchDTO }" var="flight">
					                			<tr><td>${flight.air_ScheduleDTORM.start_airport_name }</td></tr>					                						
					                		</c:forEach>					                		
					                			</table></td>
					                				<td><table class="little_table">
					                		<c:forEach items="${reserve.air_flightSchDTO }" var="flight">
					                			<tr><td>${flight.air_ScheduleDTORM.end_airport_name }</td></tr>     			
					                		</c:forEach>
					                			</table></td>
					                				<td><table class="little_table">
					                		<c:forEach items="${reserve.air_flightSchDTO }" var="flight">
					                			<tr><td><fmt:formatDate value="${flight.air_ScheduleDTORM.start_time }" pattern="yy-MM-dd"/></td></tr>     			
					                		</c:forEach>
					                			</table></td>
					                			<td>
					                			<button type="button" class="repair" id="modal_btn">확인</button>
					                			<input type="hidden" name="reservation_id" value="${reserve.reservation_id}">
					                			</td>	     
					                	</tr>
					                </c:forEach>							
      							</c:if>
				               
					                 
					                
					                 
										
					                 
					                 <!--예약내역이 없으면  -->
					                 <c:if test="${airReservListSize == 0}">
					                	 <tr>
					                        <td colspan="8">
					                            <div class="data_no">
					                                <div class="cont"><strong>예약내역이 없습니다.</strong></div>
					                            </div>
					                        </td>
					                    </tr>
					                 </c:if>
					                </tbody>
					            </table>
					        </div>	<!-- tbl -->
					    </div>	<!-- panel selected -->
					    <!-- 페이징 -->
					    <nav aria-label="Page navigation example" style="margin-top: 50px;">
							<ul class="pagination justify-content-center">
								<c:if test="${page.startPage > page.pageBlock }">
									<li class="page-item"><a class="page-link" href="myPageReservHotel?currentPage=${page.startPage-page.pageBlock}">[이전]</a></li>
								</c:if>
								<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
									<li class="page-item"><a class="page-link" href="myPageReservHotel?currentPage=${i}">${i}</a></li>
								</c:forEach>
								<c:if test="${page.endPage < page.totalPage }">
									<li class="page-item"><a class="page-link" href="myPageReservHotel?currentPage=${page.startPage+page.pageBlock}">[다음]</a></li>
								</c:if>
							</ul>
						</nav>
					</div>	<!-- panels -->
				 </form> 
				</div>	<!-- js_tabs type2 no_division -->
			</div>	<!-- contents -->
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script type="text/javascript">

$('.repair').click(function(){
	let rv_id = $(this).siblings().val();
	alert(rv_id);
	location.href="/airport/airInfoModify?reservation_id="+rv_id;
});

</script>
</body>
</html>