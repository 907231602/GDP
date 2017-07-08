<%@ page language="java"    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="height:500px"></div>
    <script src="js/echarts.js"></script>
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript"></script>
    <!-- ECharts单文件引入 -->
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    <script type="text/javascript">
    	 var myChart='';
        // 路径配置
        require.config({
            paths: {
                echarts:'./js'        /*'http://echarts.baidu.com/build/dist'*/
            }
        });
        ////////////////////////////////////////////////////////////////////////////////////////
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
                'echarts/chart/line',
                'echarts/chart/pie',
                'echarts/chart/map' 
            ],
            
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                myChart = ec.init(document.getElementById('main')); 
                
              
					  }
		);	                
                ///////////////////////////////////////////////////////////////////////////////////////
                function test(){
                	
               $.ajax({url:"MapServlet",type:"GET",success:function(msg){
            	   
            	   var rs=msg.hashRegion;
            	   console.log(rs['2017-06-19'].length);
                	
            	   option = {
					    title : {
					        text: '活跃访客地域分析',
					        subtext: '纯属虚构',
					        x:'center'
					    },
					    tooltip : {
					        trigger: 'item'
					    },
					    legend: {
					        orient: 'vertical',
					        x:'left',
					        data:['2017-06-19','2017-06-20','2017-06-21','2017-06-22','2017-06-23']
					    },
					    dataRange: {
					        min: 0,
					        max: 9500,
					        x: 'left',
					        y: 'bottom',
					        text:['高','低'],           // 文本，默认为数值文本
					        calculable : true
					    },
					    toolbox: {
					        show: true,
					        orient : 'vertical',
					        x: 'right',
					        y: 'center',
					        feature : {
					            mark : {show: true},
					            dataView : {show: true, readOnly: false},
					            restore : {show: true},
					            saveAsImage : {show: true}
					        }
					    },
					    roamController: {
					        show: true,
					        x: 'right',
					        mapTypeControl: {
					            'china': true
					        }
					    },
					    series : [
					        {
					            name: '2017-06-19',
					            type: 'map',
					            mapType: 'china',
					            roam: false,
					            itemStyle:{
					                normal:{label:{show:true}},
					                emphasis:{label:{show:true}}
					            },
					            data:   [
					            	/* for(var i=0;i<rs['2017-06-19'].length;i++){
					            		rs['2017-06-19'][i],
					            	} */
					            	 rs['2017-06-19'][0],rs['2017-06-19'][1] 
					            ] 
					            	
					        },
					        {
					            name: '2017-06-20',
					            type: 'map',
					            mapType: 'china',
					            itemStyle:{
					                normal:{label:{show:true}},
					                emphasis:{label:{show:true}}
					            },
					            data:[
					            	 rs['2017-06-20'][0]
					            ]
					        },
					        {
					            name: '2017-06-21',
					            type: 'map',
					            mapType: 'china',
					            itemStyle:{
					                normal:{label:{show:true}},
					                emphasis:{label:{show:true}}
					            },
					            data:[
					            	 rs['2017-06-21'][0]
					            ]
					        },
					        {
					            name: '2017-06-22',
					            type: 'map',
					            mapType: 'china',
					            itemStyle:{
					                normal:{label:{show:true}},
					                emphasis:{label:{show:true}}
					            },
					            data:[
					            	 rs['2017-06-22'][0]
					            ]
					        },
					        {
					            name: '2017-06-23',
					            type: 'map',
					            mapType: 'china',
					            itemStyle:{
					                normal:{label:{show:true}},
					                emphasis:{label:{show:true}}
					            },
					            data:[
					            	 rs['2017-06-23'][0]
					            ]
					        }
					    ]
					};
                	
                	 myChart.setOption(option); 
                	}});
                }
        
        setTimeout("test()",1000);
    </script>
</body>
</html>