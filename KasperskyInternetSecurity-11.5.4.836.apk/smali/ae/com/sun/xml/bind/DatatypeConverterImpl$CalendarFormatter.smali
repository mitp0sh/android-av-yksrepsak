.class final Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;
.super Ljava/lang/Object;
.source "DatatypeConverterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/DatatypeConverterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarFormatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 746
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
    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, "fidx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 751
    .local v4, "flen":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buf":Ljava/lang/StringBuilder;
    move v3, v2

    .line 753
    .end local v2    # "fidx":I
    .local v3, "fidx":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 754
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "fidx":I
    .restart local v2    # "fidx":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 756
    .local v1, "fch":C
    const/16 v5, 0x25

    if-eq v1, v5, :cond_0

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .line 758
    .end local v2    # "fidx":I
    .restart local v3    # "fidx":I
    goto :goto_0

    .line 762
    .end local v3    # "fidx":I
    .restart local v2    # "fidx":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "fidx":I
    .restart local v3    # "fidx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 793
    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5

    .line 764
    :sswitch_0
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatYear(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 768
    :sswitch_1
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatMonth(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 772
    :sswitch_2
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatDays(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 776
    :sswitch_3
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatHours(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 780
    :sswitch_4
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatMinutes(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 784
    :sswitch_5
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatSeconds(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 788
    :sswitch_6
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTimeZone(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 797
    .end local v1    # "fch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 762
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
    .line 827
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 828
    return-void
.end method

.method private static formatHours(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 831
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 832
    return-void
.end method

.method private static formatMinutes(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 835
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 836
    return-void
.end method

.method private static formatMonth(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 823
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 824
    return-void
.end method

.method private static formatSeconds(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0xe

    .line 839
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2, p1}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 840
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 842
    .local v1, "n":I
    if-eqz v1, :cond_1

    .line 843
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "ms":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 845
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

    .line 847
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
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
    .line 855
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 857
    .local v1, "tz":Ljava/util/TimeZone;
    if-nez v1, :cond_0

    .line 881
    :goto_0
    return-void

    .line 862
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 864
    .local v0, "offset":I
    if-nez v0, :cond_1

    .line 865
    const/16 v2, 0x5a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 869
    :cond_1
    if-ltz v0, :cond_2

    .line 870
    const/16 v2, 0x2b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    :goto_1
    const v2, 0xea60

    div-int/2addr v0, v2

    .line 878
    div-int/lit8 v2, v0, 0x3c

    invoke-static {v2, p1}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    .line 879
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    rem-int/lit8 v2, v0, 0x3c

    invoke-static {v2, p1}, Lae/com/sun/xml/bind/DatatypeConverterImpl$CalendarFormatter;->formatTwoDigits(ILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 872
    :cond_2
    const/16 v2, 0x2d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 873
    mul-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static formatTwoDigits(ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 886
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 887
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 890
    return-void
.end method

.method private static formatYear(Ljava/util/Calendar;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 801
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 804
    .local v1, "year":I
    if-gtz v1, :cond_0

    .line 806
    rsub-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 813
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

    .line 809
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 815
    :cond_1
    if-gtz v1, :cond_2

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    return-void
.end method
