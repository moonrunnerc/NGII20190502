$(function() {

    /*点击鼠标更换主屏*/
    $(".video-box-child").on("click", ".video_right1", function() {
        $(".video_main").removeClass("video_main").addClass("video_right1");
        $(this).removeClass("video_right1").addClass("video_main");
    });
    $(".video-box-child").on("click", ".video_right2", function() {
        $(".video_main").removeClass("video_main").addClass("video_right2");
        $(this).removeClass("video_right2").addClass("video_main");
    });

    //xjtu video
    var $my_video_1 = $("#my_video_1");
    var $my_video_2 = $("#my_video_2");
    var $my_video_3 = $("#my_video_3");

    var $toolsPlay = $("#tools-play");
    var $toolsStart = $("#tools-start");
    var $toolsPause = $("#tools-pause");
    var $videoMask = $("#video-mask");
    var $maskIco = $('#mask-ico');
    var $volumedown = $('#volume-down');
    var $volumeup = $('#volume-up');
    var $ran = $('#ran');

    var hideMask = function() {
        $videoMask.fadeOut(300);
    }


    var showMask = function() {
        $videoMask.fadeIn(300);
    }

    var play = function() {
        hideMask();
        $my_video_1[0].play();
        $my_video_2[0].play();
        $my_video_3[0].play();

    }

    var pause = function() {
        showMask();
        $my_video_1[0].pause();
        $my_video_2[0].pause();
        $my_video_3[0].pause();

    }

    $toolsPlay.on("click", function() {
        play();
    });

    $toolsStart.on("click", function() {
        play();
    });

    $toolsPause.on("click", function() {
        pause();
    });


    $maskIco.on("click", function() {
        if ($maskIco.hasClass('active')) {
            pause();
            $maskIco.removeClass('active');
        } else {
            play();
            $maskIco.addClass('active');
        }
    });


    /*控制栏time-bar : current & duration & dragEvent*/
    $("#my_video_1").on("loadedmetadata", function() {
        $(".video-tools-currenttime").html(timeFormat($(this)[0].currentTime));
        $(".video-tools-duration").html(timeFormat($(this)[0].duration));
        $(".video-volume-bar-value").css("width", 100 * $("#my_video_1")[0].volume + "%");
    });
    $("#my_video_1").on("timeupdate", function() {
        if ($("#my_video_1")[0].ended) {
            $(".tools-pause").trigger("click");
        }
        $(".video-tools-currenttime").html(timeFormat($(this)[0].currentTime));
        $(".video-playbar").css("width", 100 * $(this)[0].currentTime / $(this)[0].duration + "%");
    });
    var timeFormat = function(seconds) {
        var h = Math.floor(seconds / 3600) < 10 ? "0" + Math.floor(seconds / 3600) : Math.floor(seconds / 3600);
        var m = Math.floor(seconds / 60) < 10 ? "0" + Math.floor(seconds / 60) : Math.floor(seconds / 60);
        var s = Math.floor(seconds - (m * 60)) < 10 ? "0" + Math.floor(seconds - (m * 60)) : Math.floor(seconds - (m * 60));
        return h + ":" + m + ":" + s;
    };
    //DragEvent
    var timeDrag = false;
    $('.video-progress').on('mousedown', function(e) {
        timeDrag = true;
        updateTime(e.pageX);
    });
    $(document).on('mouseup', function(e) {
        if (timeDrag) {
            timeDrag = false;
            updateTime(e.pageX);
        }
    });
    $(document).on('mousemove', function(e) {
        if (timeDrag) {
            updateTime(e.pageX);
        }
    });
    var updateTime = function(x) {
        var maxduration = $("#my_video_1")[0].duration;
        var position = x - $('.video-progress').offset().left;
        var percentage = 100 * position / $('.video-progress').width();
        if (percentage > 100) {
            percentage = 100;
        }
        if (percentage < 0) {
            percentage = 0;
        }
        $('.video-playbar').css('width', percentage + '%');
        $("#my_video_1")[0].currentTime = maxduration * percentage / 100;
        $("#my_video_2")[0].currentTime = maxduration * percentage / 100;
        $("#my_video_3")[0].currentTime = maxduration * percentage / 100;
    };

    /*声音控制 volume-down、volume-up、*/

    $(".tools-down").on("click", function() {
        $(".video-box-child").toggleClass("video-state-muted");
        $("#my_video_1")[0].muted = !$("#my_video_1")[0].muted; //^^^^^^^^^
        if ($("#my_video_1")[0].muted) {
            $("video-volume-bar-value").css("width", 0); //声音条最大与最小
        } else {
            $(".video-volume-bar-value").css("width", 100 * $("#my_video_1")[0].volume + "%");
        }
    });
    $(".tools-up").on("click", function() {
        updateVolume(0, 1);
    });
    //DragEvent
    var volumeDrag = false;
    $('.video-volume-bar').on('mousedown', function(e) {
        volumeDrag = true;
        updateVolume(e.pageX);
    });
    $(document).on('mouseup', function(e) {
        if (volumeDrag) {
            volumeDrag = false;
            updateVolume(e.pageX);
        }
    });
    $(document).on('mousemove', function(e) {
        if (volumeDrag) {
            updateVolume(e.pageX);
        }
    });
    var updateVolume = function(x, vol) {
        var percentage;
        if (vol) {
            percentage = vol * 100;
        } else {
            var position = x - $('.video-volume-bar').offset().left;
            percentage = 100 * position / $('.video-volume-bar').width();
            if (percentage > 100) {
                percentage = 100;
            }
            if (percentage < 0) {
                percentage = 0;
            }
        }
        $('.video-volume-bar-value').css('width', percentage + '%');
        $("#my_video_1")[0].volume = percentage / 100;
        $("#my_video_1")[0].muted = false;
        if ($("#my_video_1")[0].volume == 0) {
            $(".video-box-child").addClass("video-state-muted");
        } else {
            $(".video-box-child").removeClass("video-state-muted");
        }
    };
    /*toggles :& 全屏*/

    /*******************************/
    /*select-fullscreen : 1 & 2 % 3*/
    $(".video-btn-select").on("click", function() {
        if ($(this).hasClass("video-btn-select-selected") && $(".video-btn-select-selected").size() == 1) {
            return;
        }
        if ($(this).hasClass("video-btn-select-selected")) {
            $(this).removeClass("video-btn-select-selected");
        } else {
            $(this).addClass("video-btn-select-selected");
        }
        $(".video_div").removeClass("video-player-only").removeClass("video-player-left").removeClass("video-player-right");
        if ($(".video-btn-select-selected").size() == 1) {
            $("#video_div_" + $(".video-btn-select-selected").data("selection")).addClass("video-player-only");
        }
        if ($(".video-btn-select-selected").size() == 2) {
            $("#video_div_" + $(".video-btn-select-selected:eq(0)").data("selection")).addClass("video-player-left");
            $("#video_div_" + $(".video-btn-select-selected:eq(1)").data("selection")).addClass("video-player-right");
        }

    });
    /*******************************/
});