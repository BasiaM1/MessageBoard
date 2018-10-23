package com.messageboard.utils;


import com.messageboard.entity.Announcement;

import java.util.Comparator;

public class AnnouncementByDateComparator implements Comparator<Announcement> {

    @Override
    public int compare(Announcement o1, Announcement o2) {
        long o1Millis = o1.getCreated().getTime();     // long -> milliseconds from EPOC TIME (1970.1.1 0:00)
        long o2Millis = o2.getCreated().getTime();
        return (int)(o2Millis - o1Millis);
    }
}
