.class final Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;
.super Ljava/lang/Object;
.source "DatatypeConverterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/javax/xml/bind/DatatypeConverterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarFormatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 6
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 912
    const/4 v2, 0x0

    .line 913
    .local v2, "fidx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 914
    .local v4, "flen":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buf":Ljava/lang/StringBuilder;
    move v3, v2

    .line 916
    .end local v2    # "fidx":I
    .local v3, "fidx":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 917
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "fidx":I
    .restart local v2    # "fidx":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 919
    .local v1, "fch":C
    const/16 v5, 0x25

    if-eq v1, v5, :cond_0

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .line 921
    .end local v2    # "fidx":I
    .restart local v3    # "fidx":I
    goto :goto_0

    .line 925
    .end local v3    # "fidx":I
    .restart local v2    # "fidx":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "fidx":I
    .restart local v3    # "fidx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 956
    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5

    .line 927
    :sswitch_0
    invoke-static {p1, v0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatYear(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 931
    :sswitch_1
    invoke-static {p1, v0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatMonth(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 935
    :sswitch_2
    invoke-static {p1, v0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatDays(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 939
    :sswitch_3
    invoke-static {p1, v0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatHours(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 943
    :sswitch_4
    invoke-static {p1, v0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatMinutes(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 947
    :sswitch_5
    invoke-static {p1, v0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatSeconds(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 951
    :sswitch_6
    invoke-static {p1, v0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTimeZone(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 960
    .end local v1    # "fch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 925
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
        0x68 -> :sswitch_3
        0x6d -> :sswitch_4
        0x73 -> :sswitch_5
        0x7a -> :sswitch_6
    .end sparse-switch
.end method

.method private static formatDays(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 990
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 991
    return-void
.end method

.method private static formatHours(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 994
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 995
    return-void
.end method

.method private static formatMinutes(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 998
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 999
    return-void
.end method

.method private static formatMonth(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 986
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 987
    return-void
.end method

.method private static formatSeconds(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0xe

    .line 1002
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2, p1}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 1003
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1005
    .local v1, "n":I
    if-eqz v1, :cond_1

    .line 1006
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "ms":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1010
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .end local v0    # "ms":Ljava/lang/String;
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method private static formatTimeZone(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1018
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 1020
    .local v1, "tz":Ljava/util/TimeZone;
    if-nez v1, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1025
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 1027
    .local v0, "offset":I
    if-nez v0, :cond_1

    .line 1028
    const/16 v2, 0x5a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1032
    :cond_1
    if-ltz v0, :cond_2

    .line 1033
    const/16 v2, 0x2b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1039
    :goto_1
    const v2, 0xea60

    div-int/2addr v0, v2

    .line 1041
    div-int/lit8 v2, v0, 0x3c

    invoke-static {v2, p1}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 1042
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1043
    rem-int/lit8 v2, v0, 0x3c

    invoke-static {v2, p1}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 1035
    :cond_2
    const/16 v2, 0x2d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1036
    mul-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static formatTwoDigits(ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1049
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1050
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1053
    return-void
.end method

.method private static formatYear(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 964
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 967
    .local v1, "year":I
    if-gtz v1, :cond_0

    .line 969
    rsub-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 972
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 978
    :cond_1
    if-gtz v1, :cond_2

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    return-void
.end method
