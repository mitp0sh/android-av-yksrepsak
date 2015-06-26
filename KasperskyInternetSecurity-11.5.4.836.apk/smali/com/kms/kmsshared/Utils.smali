.class public final Lcom/kms/kmsshared/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static c:Landroid/net/Uri;

.field private static d:Ljava/text/DateFormat;

.field private static e:Landroid/media/SoundPool;

.field private static f:I

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Ljava/lang/Object;

.field private static i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final j:Ljava/util/List;

.field private static final k:[[I

.field private static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 127
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kms/kmsshared/Utils;->d:Ljava/text/DateFormat;

    .line 129
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/Utils;->a:Landroid/net/Uri;

    .line 130
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/Utils;->b:Landroid/net/Uri;

    .line 135
    sput-object v6, Lcom/kms/kmsshared/Utils;->e:Landroid/media/SoundPool;

    .line 136
    sput v2, Lcom/kms/kmsshared/Utils;->f:I

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/kms/kmsshared/Utils;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kms/kmsshared/Utils;->h:Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/kms/kmsshared/Utils;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.kms"

    aput-object v1, v0, v2

    const-string v1, "com.kaspersky.kts"

    aput-object v1, v0, v4

    const-string v1, "com.kts.free"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/Utils;->j:Ljava/util/List;

    .line 165
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/kmsshared/Utils;->k:[[I

    .line 191
    sput-object v6, Lcom/kms/kmsshared/Utils;->l:Ljava/lang/String;

    return-void

    .line 165
    nop

    :array_0
    .array-data 4
        0x7f070468
        0x7f070462
        0x7f0706bd
    .end array-data

    :array_1
    .array-data 4
        0x7f070469
        0x7f070463
        0x7f0706be
    .end array-data

    :array_2
    .array-data 4
        0x7f07046a
        0x7f070464
        0x7f0706bf
    .end array-data

    :array_3
    .array-data 4
        0x7f07046b
        0x7f070465
        0x7f0706c0
    .end array-data

    :array_4
    .array-data 4
        0x7f07046c
        0x7f070466
        0x7f0706c1
    .end array-data

    :array_5
    .array-data 4
        0x7f07046d
        0x7f070467
        0x7f0706c2
    .end array-data
.end method

.method public static a(IIII)I
    .locals 0

    .prologue
    .line 1654
    packed-switch p0, :pswitch_data_0

    move p1, p3

    .line 1667
    :goto_0
    :pswitch_0
    return p1

    :pswitch_1
    move p1, p2

    .line 1662
    goto :goto_0

    .line 1654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(IIIII)I
    .locals 1

    .prologue
    .line 1671
    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    .line 1674
    :goto_0
    return p4

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/kms/kmsshared/Utils;->a(IIII)I

    move-result p4

    goto :goto_0
.end method

.method private static a(IZZ)I
    .locals 2

    .prologue
    .line 1646
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1648
    :goto_0
    sget-object v1, Lcom/kms/kmsshared/Utils;->k:[[I

    aget-object v1, v1, p0

    aget v0, v1, v0

    return v0

    .line 1646
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 3

    .prologue
    .line 936
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 940
    const/4 v0, 0x3

    .line 949
    :goto_0
    return v0

    .line 942
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 943
    const/4 v0, 0x1

    goto :goto_0

    .line 945
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 901
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 902
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":raw/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1525
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1526
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    :goto_1
    return v1

    .line 1525
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1530
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static a(IIIIII)J
    .locals 7

    .prologue
    .line 1039
    new-instance v0, Ljava/util/GregorianCalendar;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 1199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://test"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1200
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 1378
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 1379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 1382
    :goto_0
    if-ge v0, v7, :cond_0

    .line 1383
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1384
    const-string v5, "%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 873
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 874
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 875
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 878
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 879
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 880
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 885
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 886
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 888
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    const/16 v3, 0xa

    .line 1467
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1470
    const-wide/32 v1, 0x36ee80

    div-long v1, p0, v1

    rem-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1472
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    const-wide/32 v1, 0xea60

    div-long v1, p0, v1

    long-to-int v1, v1

    rem-int/lit8 v1, v1, 0x3c

    .line 1475
    if-ge v1, v3, :cond_0

    .line 1476
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1477
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1479
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1480
    const-wide/16 v1, 0x3e8

    div-long v1, p0, v1

    rem-long/2addr v1, v4

    long-to-int v1, v1

    .line 1481
    if-ge v1, v3, :cond_1

    .line 1482
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1485
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1589
    invoke-static {}, Lqq;->a()Z

    .line 1590
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v1

    .line 1592
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lsf;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1595
    if-eqz v0, :cond_2

    .line 1596
    if-ne v0, v7, :cond_0

    .line 1597
    invoke-static {v6, v7, v6}, Lcom/kms/kmsshared/Utils;->a(IZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1642
    :goto_0
    return-object v0

    .line 1599
    :cond_0
    if-le v0, v7, :cond_1

    if-gt v0, v10, :cond_1

    .line 1601
    invoke-static {v7, v7, v6}, Lcom/kms/kmsshared/Utils;->a(IZZ)I

    move-result v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1606
    :cond_1
    invoke-static {v8, v7, v6}, Lcom/kms/kmsshared/Utils;->a(IZZ)I

    move-result v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1613
    :cond_2
    invoke-virtual {v1}, Lsf;->b()J

    move-result-wide v0

    .line 1614
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 1615
    const/4 v0, 0x5

    invoke-static {v0, v7, v6}, Lcom/kms/kmsshared/Utils;->a(IZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1620
    :cond_3
    new-instance v2, Ljava/util/GregorianCalendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, "GMT"

    invoke-direct {v3, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1622
    new-instance v3, Ljava/util/GregorianCalendar;

    new-instance v4, Ljava/util/SimpleTimeZone;

    const-string v5, "GMT"

    invoke-direct {v4, v6, v5}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1624
    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1625
    invoke-virtual {v3, v9, v8}, Ljava/util/GregorianCalendar;->add(II)V

    .line 1626
    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1627
    invoke-static {v9, v7, v6}, Lcom/kms/kmsshared/Utils;->a(IZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1631
    :cond_4
    const/16 v2, 0x15

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1635
    invoke-static {v10, v7, v6}, Lcom/kms/kmsshared/Utils;->a(IZZ)I

    move-result v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 548
    if-nez p0, :cond_0

    .line 549
    const/4 v0, 0x0

    .line 560
    :goto_0
    return-object v0

    .line 550
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 552
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 553
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 554
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 552
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 556
    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    .line 557
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 560
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 911
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 912
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 913
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1357
    const/4 v1, 0x0

    .line 1359
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1361
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1362
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 1364
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 1365
    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, v2, v0

    .line 1366
    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1368
    :cond_0
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1369
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1373
    :goto_1
    return-object v0

    .line 1370
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 1371
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1370
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 459
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 460
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 461
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    const-string v0, " like \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    :goto_1
    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const-string v0, " or "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 474
    :cond_2
    return-object v1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1495
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v3

    .line 1498
    array-length v4, v3

    .line 1499
    new-array v5, v4, [Ljava/util/Locale;

    move v1, v0

    .line 1501
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1502
    aget-object v6, v3, v1

    .line 1503
    new-instance v7, Ljava/util/Locale;

    const-string v8, ""

    invoke-direct {v7, v8, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    aput-object v7, v5, v1

    .line 1501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1507
    :cond_0
    new-instance v1, Lrd;

    invoke-direct {v1}, Lrd;-><init>()V

    invoke-static {v5, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1514
    array-length v1, v5

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v3, v5, v0

    .line 1515
    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    .line 1516
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1517
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1521
    :cond_2
    return-object v2
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    .prologue
    .line 478
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 479
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 480
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_1
    return-object v1
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 248
    invoke-static {}, Lcom/kms/kmsshared/Utils;->freeNative()Ljava/lang/String;

    .line 249
    return-void
.end method

.method private static a(Landroid/app/Activity;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1269
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1272
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1273
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->i(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1274
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1275
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1288
    :cond_1
    :goto_0
    return-void

    .line 1280
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1281
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1282
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1286
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 342
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 343
    const-string v1, "com.google.android.talk"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V

    .line 345
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 362
    const v0, 0x7f070236

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 364
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 365
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const v2, 0x7f070238

    const v3, 0x7f02006e

    const/4 v4, 0x5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/String;IIILandroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 1213
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1214
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1216
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1217
    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1218
    if-eqz p1, :cond_1

    .line 1219
    const-string v0, "text/html"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1225
    invoke-static {v0, p0}, Lgo;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lgo;

    move-result-object v0

    .line 1226
    invoke-virtual {v0}, Lgo;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1227
    iget-object v0, v0, Lgo;->d:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1228
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1251
    :cond_0
    :goto_1
    return-void

    .line 1221
    :cond_1
    const-string v0, "text/html"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1233
    :cond_2
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lbi;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1234
    sget-object v2, Lbi;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-static {p0, v1, v2, v3}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1239
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    .line 1240
    const-string v0, "com.android.chrome"

    const-string v2, "com.google.android.apps.chrome.Main"

    invoke-static {p0, v1, v0, v2}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    :cond_4
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1248
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1251
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 717
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 722
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 723
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 724
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020066

    invoke-direct {v4, v5, p3, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 725
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-virtual {v4, p0, v1, p3, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 727
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 728
    invoke-virtual {v0, p2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 731
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 740
    return-void

    .line 732
    :catch_0
    move-exception v1

    .line 733
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 225
    const-string v0, "KISA-android"

    invoke-static {v0}, Lhr;->a(Ljava/lang/String;)V

    .line 227
    invoke-static {p0}, LmB;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 228
    new-instance v1, LjL;

    invoke-direct {v1, p0, v4}, LjL;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f060008

    invoke-static {p0, v0, v1, v2, p1}, Lgy;->a(Landroid/content/Context;Ljava/io/File;Ljm;ILjava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/kms/kmsshared/Utils;->initNative()Ljava/lang/String;

    .line 236
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x14

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 237
    sput-object v0, Lcom/kms/kmsshared/Utils;->e:Landroid/media/SoundPool;

    const v1, 0x7f060017

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/kms/kmsshared/Utils;->f:I

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 240
    if-ge v0, v4, :cond_0

    .line 241
    const-string v0, "content://sim/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/Utils;->c:Landroid/net/Uri;

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/Utils;->c:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IIILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 380
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 384
    invoke-static {p0, v3, p5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 385
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 386
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, p3, v4, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 387
    invoke-virtual {v5, p0, p1, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 388
    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 389
    invoke-virtual {v0, p4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 390
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/kavsdk/antivirus/ThreatType;)V
    .locals 7

    .prologue
    .line 648
    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 655
    sget-object v0, Lcom/kms/kmsshared/Utils;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 661
    if-eqz p2, :cond_2

    .line 664
    sget-object v1, Lre;->a:[I

    invoke-virtual {p5}, Lcom/kavsdk/antivirus/ThreatType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 674
    const v1, 0x7f0700f7

    .line 676
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 680
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 682
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/kms/KisMainActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 683
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 684
    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f020066

    invoke-direct {v5, v6, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 685
    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {v5, p0, v2, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 687
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 689
    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 691
    new-instance v0, Lrf;

    invoke-direct {v0, p0}, Lrf;-><init>(Landroid/content/Context;)V

    .line 692
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 693
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 666
    :pswitch_0
    const v1, 0x7f07037d

    .line 667
    goto :goto_1

    .line 670
    :pswitch_1
    const v1, 0x7f07037c

    .line 671
    goto :goto_1

    .line 678
    :cond_2
    const v1, 0x7f0700f6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 1534
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1535
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1536
    invoke-static {v0, p0}, Lcom/kms/kmsshared/Utils;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 1537
    return-void
.end method

.method private static a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 1541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 1542
    invoke-static {p0, p1}, Lrh;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 1547
    :goto_0
    return-void

    .line 1544
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 1545
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static a(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 446
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/DataOutput;[B)V
    .locals 1

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    array-length v0, p1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 426
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 813
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 814
    const v1, 0x7f0706a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 816
    const v2, 0x7f0701f1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 819
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 823
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 824
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 826
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 829
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;LqV;)V
    .locals 1

    .prologue
    .line 849
    :try_start_0
    invoke-static {}, LqW;->a()LqW;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, LqW;->a(Ljava/lang/String;Ljava/lang/String;LqV;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 832
    invoke-static {p0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 837
    :cond_0
    new-instance v0, LqU;

    invoke-direct {v0, p0, p1}, LqU;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :try_start_0
    invoke-static {}, LqW;->a()LqW;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, LqW;->a(Ljava/lang/String;Ljava/lang/String;LqV;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a([BZ)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1714
    array-length v2, p0

    move v1, v0

    .line 1716
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1718
    aget-byte v3, p0, v0

    mul-int/lit8 v1, v1, 0x5

    rsub-int v1, v1, 0x100

    add-int/lit8 v1, v1, -0x7

    int-to-byte v1, v1

    add-int/2addr v1, v3

    int-to-byte v1, v1

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1720
    aget-byte v1, p0, v0

    .line 1716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1726
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1255
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1259
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(LgI;)Z
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, LgI;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/io/Closeable;)Z
    .locals 1

    .prologue
    .line 275
    if-eqz p0, :cond_0

    .line 276
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/Closeable;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/OutputStream;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/Closeable;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 856
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 857
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return v0

    .line 857
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/DataInputStream;)[B
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 432
    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    .line 435
    :cond_0
    new-array v0, v0, [B

    .line 436
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_0
.end method

.method public static b(LgI;)J
    .locals 6

    .prologue
    .line 1047
    iget v0, p0, LgI;->f:I

    iget v1, p0, LgI;->e:I

    iget v2, p0, LgI;->d:I

    iget v3, p0, LgI;->c:I

    iget v4, p0, LgI;->b:I

    iget v5, p0, LgI;->a:I

    invoke-static/range {v0 .. v5}, Lcom/kms/kmsshared/Utils;->a(IIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1489
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 1490
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 454
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1322
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1323
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 1326
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1327
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1330
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1331
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1333
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1335
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 576
    if-nez p0, :cond_0

    .line 577
    const/4 v0, 0x0

    .line 588
    :goto_0
    return-object v0

    .line 578
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 580
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 581
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 582
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    .line 585
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 588
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1312
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1317
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lcom/kms/kmsshared/Utils;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 497
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 499
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v0, " like "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 504
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    :goto_1
    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const-string v0, " or "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 515
    :cond_2
    return-object v1
.end method

.method public static final b(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3

    .prologue
    .line 1207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://test"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1208
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 310
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 312
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 315
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 316
    :goto_0
    if-eqz v0, :cond_3

    .line 318
    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 319
    const/4 v2, 0x0

    .line 320
    const-string v3, "android.telephony.TelephonyManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v8, v1

    move-object v1, v2

    move v2, v8

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 321
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v6

    .line 323
    const-string v7, "getITelephony"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 325
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 315
    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "cancelMissedCallsNotification"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 330
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_3
    :goto_2
    return-void

    .line 333
    :catch_0
    move-exception v0

    const-string v0, "KMS"

    const-string v1, "removeCallNotification failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1265
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/app/Activity;Z)V

    .line 1266
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 698
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 699
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 700
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 372
    const v0, 0x7f070237

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 373
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 375
    const v2, 0x7f070239

    const v3, 0x7f02006f

    const/4 v4, 0x6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;Ljava/lang/String;IIILandroid/content/Intent;)V

    .line 377
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1143
    if-nez p1, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Old package name should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_0
    :try_start_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1149
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1151
    if-eqz v0, :cond_2

    .line 1152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1153
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1162
    :goto_0
    return v0

    .line 1159
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 1162
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 606
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 607
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 608
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    move v1, v0

    .line 609
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 610
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 611
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 613
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 617
    :goto_1
    return-object v0

    .line 609
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 617
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 348
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 350
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 351
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 352
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 353
    const-string v2, "com.android.mms"

    .line 354
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 355
    invoke-static {v0, v2}, Lrl;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {v0, v2}, Lcom/kms/kmsshared/Utils;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 743
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 746
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/activation/gui/LicenseInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    const-string v2, "licenseSuccessfullyInstalled"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 748
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 750
    const v2, 0x7f07009d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 752
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020066

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 753
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 754
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 755
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 756
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 621
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 622
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 623
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 624
    if-eqz v1, :cond_0

    .line 625
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 626
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 627
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 629
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 393
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 394
    const/4 v2, 0x0

    .line 396
    :try_start_0
    const-string v3, "android.telephony.TelephonyManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 397
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    .line 399
    const-string v8, "getITelephony("

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 400
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 401
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 406
    :cond_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v1, v3, v0

    .line 407
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    .line 409
    const-string v6, "endCall"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 410
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_1
    :goto_2
    return-void

    .line 396
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    const-string v1, "KMS"

    const-string v2, "endCallTelephony failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static d(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 759
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 762
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/activation/gui/LicenseBlockedActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 765
    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 766
    const v3, 0x7f07009e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 768
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f02007e

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 776
    const/16 v2, 0x9

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 777
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1009
    const-string v1, "000000000000000"

    .line 1010
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1011
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1012
    if-eqz v0, :cond_0

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1013
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_1

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1018
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_2

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1023
    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1024
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_3

    .line 1027
    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1035
    :goto_0
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 633
    if-nez p0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 635
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 636
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 639
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 640
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 703
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Lsl;->c()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 708
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lsl;->c()I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1106
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_0

    .line 1108
    invoke-static {p0, v0}, Lcom/kms/kmsshared/Utils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->p(Ljava/lang/String;)V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 786
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->getPasswordHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v0

    .line 790
    :cond_1
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v2

    .line 792
    if-eqz v2, :cond_0

    .line 795
    const-class v3, Lsj;

    monitor-enter v3

    .line 796
    :try_start_0
    invoke-virtual {v2, v1}, Lsj;->a(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v2, p0}, Lsj;->b(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v2}, Lsj;->g_()V

    .line 799
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    const/4 v0, 0x1

    goto :goto_0

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static native freeNative()Ljava/lang/String;
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 780
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 781
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 782
    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1134
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_0

    .line 1136
    invoke-static {p0, v0}, Lcom/kms/kmsshared/Utils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 804
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->getPasswordHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Lsj;->e()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native getPasswordHash(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static h()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 956
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 957
    invoke-virtual {v0}, Lsj;->c()Z

    move-result v0

    .line 959
    if-nez v0, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/Utils;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    sget-object v1, Lcom/kms/kmsshared/Utils;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 967
    :try_start_0
    new-instance v0, Lrg;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lrg;-><init>(B)V

    .line 968
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 969
    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v0, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 970
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    sget-object v0, Lcom/kms/kmsshared/Utils;->e:Landroid/media/SoundPool;

    sget v1, Lcom/kms/kmsshared/Utils;->f:I

    const v6, 0x3fa66666    # 1.3f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1166
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 919
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Lsj;->e()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 932
    :goto_0
    return v0

    .line 927
    :cond_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 928
    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 930
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 932
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 868
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xd

    .line 981
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 982
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v2

    .line 983
    invoke-virtual {v2, v4}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 985
    const-string v3, "000000000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 986
    invoke-static {}, Lcom/kms/kmsshared/Utils;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 989
    :goto_0
    invoke-virtual {v2, v4, v0}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 990
    invoke-virtual {v2}, Lsk;->g_()V

    .line 993
    :cond_0
    return-object v0

    .line 986
    :cond_1
    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1302
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1306
    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1304
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0
.end method

.method public static native initNative()Ljava/lang/String;
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    const-string v0, "MD5"

    invoke-static {p0, v0}, LbB;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    return-object v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2d

    .line 1390
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v1, v0, 0x20

    .line 1391
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1393
    if-gez v1, :cond_0

    .line 1394
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Source string is longer then guid length!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1397
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1399
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    const/16 v0, 0x8

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1401
    const/16 v0, 0xd

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1402
    const/16 v0, 0x12

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1403
    const/16 v0, 0x17

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 1051
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    invoke-interface {v0}, Lgz;->c()LgI;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a(LgI;)Z

    move-result v0

    return v0
.end method

.method public static k()J
    .locals 2

    .prologue
    .line 1055
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    invoke-interface {v0}, Lgz;->c()LgI;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->b(LgI;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1173
    sget-object v0, Lcom/kms/kmsshared/Utils;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1174
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1175
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1176
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-static {v5}, Lcom/kms/kmsshared/Utils;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1177
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-static {v1}, Lcom/kms/kmsshared/Utils;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1185
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1456
    invoke-static {p0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 1460
    invoke-virtual {v0}, Lsj;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1462
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1680
    invoke-static {p0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    :cond_0
    :goto_0
    return-object p0

    .line 1683
    :cond_1
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1684
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    .line 1685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1686
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    .line 1687
    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 1689
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1686
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1691
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static l()Z
    .locals 4

    .prologue
    .line 1059
    invoke-static {}, Lcom/kms/kmsshared/Utils;->k()J

    move-result-wide v0

    .line 1060
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1061
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1062
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1063
    sub-long v0, v2, v0

    .line 1064
    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 1065
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1069
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static m()I
    .locals 4

    .prologue
    .line 1073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v2

    invoke-virtual {v2}, Lsf;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1074
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1075
    const-string v2, "KMS"

    const-string v3, "Last scan time is greater than current time"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    const-wide/32 v2, 0x48190800

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static m(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 492
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()I
    .locals 4

    .prologue
    .line 1083
    invoke-static {}, Lcom/kms/kmsshared/Utils;->k()J

    move-result-wide v0

    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 1086
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1087
    const-string v2, "KMS"

    const-string v3, "AVBases time is greater than current time"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    const-wide/32 v2, 0x48190800

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x0

    const-string v2, "%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 568
    const/4 v1, 0x4

    const-string v2, "%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const/16 v1, 0x8

    const-string v2, "%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v1, "%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1093
    if-nez p0, :cond_1

    .line 1094
    const-string p0, ""

    .line 1102
    :cond_0
    :goto_0
    return-object p0

    .line 1096
    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1097
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1099
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1100
    const-string p0, ""

    goto :goto_0

    .line 1102
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static o()Z
    .locals 2

    .prologue
    .line 1189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1190
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1191
    const/4 v0, 0x1

    .line 1193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1117
    if-nez p0, :cond_0

    .line 1118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 1123
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1124
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1126
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :goto_0
    return-void

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    const-string v1, "KMS"

    const-string v2, "Failed to launch old package"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static p()Z
    .locals 2

    .prologue
    .line 1291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1292
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 1293
    invoke-static {}, Lrk;->a()Z

    move-result v0

    .line 1295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q()Z
    .locals 2

    .prologue
    .line 1341
    const-string v0, "htc_flyer"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .locals 2

    .prologue
    .line 1345
    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1551
    sget-object v0, Lcom/kms/kmsshared/Utils;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1552
    sget-object v0, Lcom/kms/kmsshared/Utils;->l:Ljava/lang/String;

    .line 1580
    :goto_0
    return-object v0

    .line 1554
    :cond_0
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 1557
    const/4 v0, 0x0

    .line 1558
    if-eqz v1, :cond_1

    .line 1559
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1560
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1561
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1563
    :cond_1
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1564
    const-string v0, "9.0.0.199"

    sput-object v0, Lcom/kms/kmsshared/Utils;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    :goto_1
    sget-object v0, Lcom/kms/kmsshared/Utils;->l:Ljava/lang/String;

    goto :goto_0

    .line 1566
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1568
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const-string v2, "."

    invoke-static {v0, v2}, LbC;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1570
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    .line 1571
    const-string v0, ".0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/Utils;->l:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1577
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1584
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f070346

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()Z
    .locals 2

    .prologue
    .line 1698
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 1699
    invoke-virtual {v0}, Lsj;->o()I

    move-result v0

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v1

    invoke-static {v1}, Lkx;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v()Z
    .locals 2

    .prologue
    .line 1704
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Lsz;->b()Z

    move-result v0

    .line 1706
    invoke-static {}, Lcom/kms/kmsshared/Utils;->u()Z

    move-result v1

    .line 1707
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic w()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/kms/kmsshared/Utils;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic x()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/kms/kmsshared/Utils;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static y()Z
    .locals 2

    .prologue
    .line 997
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    .line 998
    invoke-interface {v0}, LaC;->c()I

    move-result v0

    .line 999
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
