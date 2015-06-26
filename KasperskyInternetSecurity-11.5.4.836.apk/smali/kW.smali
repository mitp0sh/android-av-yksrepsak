.class public LkW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LrE;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:LkX;

.field private final c:Lcom/kaspersky/components/urlchecker/UrlChecker;

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, LkX;

    invoke-direct {v0}, LkX;-><init>()V

    iput-object v0, p0, LkW;->b:LkX;

    .line 43
    iput-object p1, p0, LkW;->a:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlChecker;

    invoke-direct {v0}, Lcom/kaspersky/components/urlchecker/UrlChecker;-><init>()V

    iput-object v0, p0, LkW;->c:Lcom/kaspersky/components/urlchecker/UrlChecker;

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)LrE;
    .locals 1

    .prologue
    .line 153
    new-instance v0, LkW;

    invoke-direct {v0, p0}, LkW;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static a(J)V
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p0, p1}, Lsb;->a(J)V

    .line 144
    invoke-virtual {v0}, Lsb;->g_()V

    .line 145
    return-void
.end method

.method private a(Lcom/kms/kmsshared/cellmon/SMSEvent;)V
    .locals 5

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/SMSEvent;->getSMSBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, LkW;->b:LkX;

    invoke-virtual {v1, v0}, LkX;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    :try_start_0
    new-instance v2, LcI;

    invoke-direct {v2, v0}, LcI;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, LkW;->c:Lcom/kaspersky/components/urlchecker/UrlChecker;

    invoke-virtual {v2}, LcI;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->SmsClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    invoke-virtual {v0, v3, v4}, Lcom/kaspersky/components/urlchecker/UrlChecker;->a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;)Lcom/kaspersky/components/urlchecker/UrlInfo;

    move-result-object v0

    .line 115
    iget v3, v0, Lcom/kaspersky/components/urlchecker/UrlInfo;->mVerdict:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 116
    iget-wide v3, v0, Lcom/kaspersky/components/urlchecker/UrlInfo;->mCategories:J

    invoke-static {v3, v4}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getCategoriesByMask(J)Ljava/util/List;

    move-result-object v3

    .line 117
    sget-object v4, Lcom/kaspersky/components/urlchecker/UrlCategory;->PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    :cond_1
    sget-object v4, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, p1, v3}, LkW;->a(Lcom/kms/kmsshared/cellmon/SMSEvent;Z)V

    .line 119
    iget-object v3, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, LcI;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlInfo;)V

    .line 120
    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/SMSEvent;->setHandled()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0

    .line 128
    :cond_2
    iget-wide v0, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-static {v0, v1}, LkW;->a(J)V

    .line 129
    return-void

    .line 125
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/kms/kmsshared/cellmon/SMSEvent;Z)V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LkW;->a:Landroid/content/Context;

    const-class v2, Lcom/kms/gui/antiphishing/SmsAskUserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const-string v1, "com.kms.useraction.smsevent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    const-string v1, "com.kms.useraction.smsevent.malware_link"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, LkW;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method private static b()LaC;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    return-object v0
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 133
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC Desire S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d()J
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lsb;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method private static e()Z
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lsb;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->isBlocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    instance-of v1, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    if-eqz v1, :cond_2

    invoke-static {}, LkW;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mMissedEvent:Z

    if-nez v1, :cond_2

    invoke-static {}, LkW;->b()LaC;

    move-result-object v1

    const/16 v2, 0x27

    invoke-interface {v1, v2}, LaC;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_3
    check-cast p1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    .line 83
    iget-boolean v1, p0, LkW;->d:Z

    if-nez v1, :cond_6

    iget v1, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-nez v1, :cond_6

    iget-wide v1, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-static {}, LkW;->d()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 87
    invoke-static {}, LkW;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    invoke-direct {p0, p1}, LkW;->a(Lcom/kms/kmsshared/cellmon/SMSEvent;)V

    .line 91
    :cond_4
    iput-boolean v0, p0, LkW;->d:Z

    .line 92
    iget-wide v0, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-static {v0, v1}, LkW;->a(J)V

    .line 102
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/SMSEvent;->isHandled()Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_6
    iget-boolean v1, p0, LkW;->d:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/SMSEvent;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    iget v1, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-ne v1, v0, :cond_5

    iget-wide v0, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-static {}, LkW;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 99
    invoke-direct {p0, p1}, LkW;->a(Lcom/kms/kmsshared/cellmon/SMSEvent;)V

    goto :goto_1
.end method
