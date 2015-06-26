.class public final LO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax;


# instance fields
.field private a:LB;

.field private b:Lcom/kaspersky/components/ipm/IpmMessageManager;

.field private c:Lv;

.field private final d:I

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/SortedMap;

.field private g:Law;

.field private final h:Ljava/lang/Object;

.field private i:LF;

.field private j:LN;


# direct methods
.method public constructor <init>(Lv;ILcom/kaspersky/components/ipm/IpmMessageManager;LB;Law;LF;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LO;->e:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, LO;->f:Ljava/util/SortedMap;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LO;->h:Ljava/lang/Object;

    .line 402
    new-instance v0, LP;

    invoke-direct {v0, p0}, LP;-><init>(LO;)V

    iput-object v0, p0, LO;->j:LN;

    .line 71
    iput-object p4, p0, LO;->a:LB;

    .line 72
    iput-object p3, p0, LO;->b:Lcom/kaspersky/components/ipm/IpmMessageManager;

    .line 73
    iput-object p1, p0, LO;->c:Lv;

    .line 74
    iput p2, p0, LO;->d:I

    .line 75
    iput-object p5, p0, LO;->g:Law;

    .line 76
    iput-object p6, p0, LO;->i:LF;

    .line 78
    iget-object v0, p0, LO;->b:Lcom/kaspersky/components/ipm/IpmMessageManager;

    iget-object v1, p0, LO;->j:LN;

    invoke-interface {v0, v1}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(LN;)V

    .line 79
    iget-object v0, p0, LO;->g:Law;

    invoke-interface {v0, p0}, Law;->a(Lax;)V

    .line 80
    return-void
.end method

.method static synthetic a(LO;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LO;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(LaC;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 285
    invoke-interface {p0}, LaC;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_EXPIRED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    invoke-interface {p0}, LaC;->a()Lay;

    move-result-object v1

    invoke-interface {v1}, Lay;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_BLOCKED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    invoke-interface {p0}, LaC;->a()Lay;

    move-result-object v1

    invoke-interface {v1}, Lay;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    invoke-interface {p0}, LaC;->a()Lay;

    move-result-object v1

    invoke-interface {v1}, Lay;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 293
    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->SUBSCRIPTION_SUSPENDED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    invoke-interface {p0}, LaC;->c()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 295
    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_LIMITED:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_3
    :goto_0
    return-object v0

    .line 297
    :cond_4
    invoke-interface {p0}, LaC;->c()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 298
    sget-object v1, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;->LICENSE_IS_TRIAL:Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(LO;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, LO;->a(Z)V

    return-void
.end method

.method private a(Lcom/kaspersky/components/ipm/ContentReference;)V
    .locals 8

    .prologue
    .line 492
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getNews()Lcom/kaspersky/componenets/ipm/xml/NewsType;

    move-result-object v6

    .line 497
    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSeverity()Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSeverity()Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;

    move-result-object v0

    .line 500
    :goto_1
    sget-object v1, LQ;->a:[I

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 511
    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityLow:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    .line 512
    const-string v0, "IPM"

    const-string v2, "Unexpected severity got from IPM. Changed severity to low."

    invoke-static {v0, v2}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_2
    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getContentUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getContentUri()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 521
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 522
    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getContentUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 525
    :goto_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, LO;->b:Lcom/kaspersky/components/ipm/IpmMessageManager;

    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getAnnouncement()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "file:///"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentUrl:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->isIgnoreDisableShowSetting()Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;Z)J

    move-result-wide v0

    .line 532
    invoke-virtual {p1, v0, v1}, Lcom/kaspersky/components/ipm/ContentReference;->setMessageId(J)V

    goto :goto_0

    .line 497
    :cond_2
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;->INFORMATION:Lcom/kaspersky/componenets/ipm/xml/SeverityEnum;

    goto :goto_1

    .line 502
    :pswitch_0
    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    goto :goto_2

    .line 505
    :pswitch_1
    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityLow:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    goto :goto_2

    .line 508
    :pswitch_2
    sget-object v1, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    goto :goto_2

    .line 524
    :cond_3
    invoke-virtual {v6}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getContentUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/kaspersky/components/ipm/ContentReference;Ljava/util/SortedMap;)V
    .locals 13

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 125
    iget-object v0, p0, LO;->g:Law;

    invoke-interface {v0}, Law;->a()LaC;

    move-result-object v2

    .line 126
    invoke-interface {v2}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->f()Z

    move-result v0

    .line 127
    if-eqz v0, :cond_2

    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->BLOCKED:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    move-object v1, v0

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getNews()Lcom/kaspersky/componenets/ipm/xml/NewsType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v11

    .line 131
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;->getLicenseStatus()Ljava/util/List;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    .line 135
    if-ne v0, v1, :cond_0

    .line 136
    const-string v0, "IPM"

    const-string v1, "License status is excluded. No news in the queue."

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_1
    :goto_1
    return-void

    .line 127
    :cond_2
    sget-object v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->VALID:Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    move-object v1, v0

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeLicenseStatusList()Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusListType;->getLicenseStatus()Ljava/util/List;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_5

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;

    .line 148
    if-ne v0, v1, :cond_4

    move v0, v3

    .line 153
    :goto_2
    if-nez v0, :cond_5

    .line 154
    const-string v0, "IPM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "License status is not included. License is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_5
    invoke-interface {v2}, LaC;->c()I

    move-result v0

    invoke-static {v0}, LD;->e(I)Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    move-result-object v4

    .line 162
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 163
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;->getLicenseType()Ljava/util/List;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_7

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 166
    if-ne v0, v4, :cond_6

    .line 167
    const-string v0, "IPM"

    const-string v1, "License type is excluded. No news in the queue."

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_7
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 175
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeLicenseTypeList()Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypesListType;->getLicenseType()Ljava/util/List;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_9

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;

    .line 179
    if-ne v0, v4, :cond_8

    .line 180
    const-string v0, "IPM"

    const-string v5, "App license is included."

    invoke-static {v0, v5}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 185
    :goto_3
    if-nez v0, :cond_9

    .line 186
    const-string v0, "IPM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "License type is not included. License type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/kaspersky/componenets/ipm/xml/LicenseTypeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :cond_9
    invoke-static {v2}, LO;->a(LaC;)Ljava/util/Set;

    move-result-object v4

    .line 194
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 195
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getExcludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;->getApplicationStatus()Ljava/util/List;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_b

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 198
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 199
    const-string v0, "IPM"

    const-string v1, "App license status is excluded. No news in the queue."

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :cond_b
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 207
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getIncludeApplicationStatusList()Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusListType;->getApplicationStatus()Ljava/util/List;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_d

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/ApplicationStatusEnum;

    .line 211
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 212
    const-string v0, "IPM"

    const-string v4, "App license status is included"

    invoke-static {v0, v4}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 217
    :goto_4
    if-nez v0, :cond_d

    .line 218
    const-string v0, "IPM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App license status is not included. License is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/LicenseStatusEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 225
    :cond_d
    invoke-interface {v2}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 227
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 228
    invoke-interface {v2}, LaC;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 230
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, LaC;->e()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;->getDaysAfterExpiration()Ljava/util/List;

    move-result-object v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, LO;->a(Ljava/lang/String;JILjava/util/List;Ljava/util/SortedMap;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 258
    :goto_5
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getDateTimeRangeList()Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 259
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getDateTimeRangeList()Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeListType;->getDateTimeRange()Ljava/util/List;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_12

    .line 261
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 262
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeType;

    .line 263
    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeType;->getTo()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 265
    invoke-virtual {v5, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 266
    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/DateTimeRangeType;->getFrom()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Lcom/kaspersky/components/ipm/IpmMessageState;

    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lcom/kaspersky/components/ipm/IpmMessageState;-><init>(ZLjava/lang/String;)V

    invoke-interface {p2, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/kaspersky/components/ipm/IpmMessageState;

    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/kaspersky/components/ipm/IpmMessageState;-><init>(ZLjava/lang/String;)V

    invoke-interface {p2, v5, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    :goto_7
    move v1, v0

    .line 271
    goto :goto_6

    .line 233
    :cond_e
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, LaC;->e()J

    move-result-wide v5

    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseSubscription()Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/LicenseSubscriptionType;->getDaysToExpiration()Ljava/util/List;

    move-result-object v8

    move-object v9, p2

    invoke-static/range {v4 .. v9}, LO;->a(Ljava/lang/String;JILjava/util/List;Ljava/util/SortedMap;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_5

    .line 240
    :cond_f
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v12

    .line 241
    if-eqz v12, :cond_15

    .line 242
    invoke-interface {v2}, LaC;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 243
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, LaC;->e()J

    move-result-wide v1

    invoke-virtual {v12}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysAfterExpiration()Ljava/util/List;

    move-result-object v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, LO;->a(Ljava/lang/String;JILjava/util/List;Ljava/util/SortedMap;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto/16 :goto_5

    .line 246
    :cond_10
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, LaC;->e()J

    move-result-wide v5

    invoke-virtual {v12}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysToExpiration()Ljava/util/List;

    move-result-object v8

    move-object v9, p2

    invoke-static/range {v4 .. v9}, LO;->a(Ljava/lang/String;JILjava/util/List;Ljava/util/SortedMap;)Z

    move-result v0

    or-int/lit8 v6, v0, 0x0

    .line 249
    invoke-virtual {v11}, Lcom/kaspersky/componenets/ipm/xml/ScheduleType;->getLicenseExpiration()Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysAfterActivation()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 250
    invoke-virtual {p1}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, LaC;->f()J

    move-result-wide v1

    invoke-virtual {v12}, Lcom/kaspersky/componenets/ipm/xml/LicenseExpirationType;->getDaysAfterActivation()Ljava/util/List;

    move-result-object v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, LO;->a(Ljava/lang/String;JILjava/util/List;Ljava/util/SortedMap;)Z

    move-result v0

    or-int/2addr v0, v6

    goto/16 :goto_5

    :cond_11
    move v0, v1

    .line 276
    :cond_12
    if-nez v0, :cond_1

    .line 278
    invoke-direct {p0, p1}, LO;->a(Lcom/kaspersky/components/ipm/ContentReference;)V

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto :goto_7

    :cond_14
    move v0, v6

    goto/16 :goto_5

    :cond_15
    move v0, v10

    goto/16 :goto_5

    :cond_16
    move v0, v10

    goto/16 :goto_4

    :cond_17
    move v0, v10

    goto/16 :goto_3

    :cond_18
    move v0, v10

    goto/16 :goto_2
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    iget-object v0, p0, LO;->c:Lv;

    iget v1, p0, LO;->d:I

    invoke-interface {v0, v1}, Lv;->a(I)V

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, LO;->c:Lv;

    iget v1, p0, LO;->d:I

    invoke-interface {v0, v1}, Lv;->b(I)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JILjava/util/List;Ljava/util/SortedMap;)Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    if-nez p4, :cond_0

    .line 331
    :goto_0
    return v2

    .line 308
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 310
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;

    .line 311
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 312
    invoke-virtual {v6, v4}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 313
    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;->getTo()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    mul-int/2addr v7, p3

    invoke-virtual {v6, v9, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 314
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    .line 317
    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 319
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 320
    new-instance v6, Lcom/kaspersky/components/ipm/IpmMessageState;

    invoke-direct {v6, v2, p0}, Lcom/kaspersky/components/ipm/IpmMessageState;-><init>(ZLjava/lang/String;)V

    invoke-interface {p5, v1, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v6, "IPM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "scheduled finish date: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 324
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 325
    invoke-virtual {v0}, Lcom/kaspersky/componenets/ipm/xml/NumericRangeType;->getFrom()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    mul-int/2addr v0, p3

    invoke-virtual {v1, v9, v0}, Ljava/util/Calendar;->add(II)V

    .line 326
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/kaspersky/components/ipm/IpmMessageState;

    invoke-direct {v1, v3, p0}, Lcom/kaspersky/components/ipm/IpmMessageState;-><init>(ZLjava/lang/String;)V

    invoke-interface {p5, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "IPM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "scheduled start date: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    :goto_2
    move v1, v0

    .line 330
    goto/16 :goto_1

    :cond_1
    move v2, v1

    .line 331
    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic b(LO;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LO;->f:Ljava/util/SortedMap;

    return-object v0
.end method

.method private b([Lcom/kaspersky/components/ipm/ContentReference;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 336
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 339
    iget-object v0, p0, LO;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/ContentReference;

    .line 341
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 342
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 343
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 345
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 346
    iget-object v1, p0, LO;->b:Lcom/kaspersky/components/ipm/IpmMessageManager;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(J)V

    .line 350
    :cond_1
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getContentPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbr;->b(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 354
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 356
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaspersky/components/ipm/IpmMessageState;

    invoke-virtual {v1}, Lcom/kaspersky/components/ipm/IpmMessageState;->getNewsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 360
    :cond_3
    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 364
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/ContentReference;

    .line 365
    iget-object v2, p0, LO;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 368
    iget-object v2, p0, LO;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v2, p0, LO;->a:LB;

    invoke-interface {v2, v0}, LB;->a(Lcom/kaspersky/components/ipm/ContentReference;)V

    .line 373
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getNews()Lcom/kaspersky/componenets/ipm/xml/NewsType;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 374
    iget-object v2, p0, LO;->f:Ljava/util/SortedMap;

    invoke-direct {p0, v0, v2}, LO;->a(Lcom/kaspersky/components/ipm/ContentReference;Ljava/util/SortedMap;)V

    goto :goto_2

    .line 376
    :cond_6
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getGaSettings()Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 377
    iget-object v2, p0, LO;->i:LF;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getGaSettings()Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;->isSendApplicationStatistics()Z

    move-result v3

    invoke-interface {v2, v3}, LF;->a(Z)V

    .line 379
    invoke-virtual {v0, v8}, Lcom/kaspersky/components/ipm/ContentReference;->setGaSettings(Lcom/kaspersky/componenets/ipm/xml/GoogleAnalyticsSettingsType;)V

    .line 395
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbr;->b(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, v8}, Lcom/kaspersky/components/ipm/ContentReference;->setContentPath(Ljava/lang/String;)V

    goto :goto_2

    .line 380
    :cond_8
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getWebSurveySettings()Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 381
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getWebSurveySettings()Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;

    move-result-object v2

    .line 382
    iget-object v3, p0, LO;->i:LF;

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;->isPerformAfterPurchaseSurvey()Z

    move-result v4

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;->getSurveyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, LF;->a(ZLjava/lang/String;)V

    .line 385
    invoke-virtual {v0, v8}, Lcom/kaspersky/components/ipm/ContentReference;->setWebSurveySettings(Lcom/kaspersky/componenets/ipm/xml/WebSurveySettingsType;)V

    goto :goto_3

    .line 386
    :cond_9
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getGpSettings()Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 387
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getGpSettings()Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;

    move-result-object v2

    .line 388
    iget-object v3, p0, LO;->i:LF;

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;->getBuyGooglePlayProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;->getRenewGooglePlayProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, LF;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v8}, Lcom/kaspersky/components/ipm/ContentReference;->setGpSettings(Lcom/kaspersky/componenets/ipm/xml/GooglePlaySettingsType;)V

    goto :goto_3

    .line 400
    :cond_a
    return-void
.end method

.method static synthetic c(LO;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LO;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(LO;)LB;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, LO;->a:LB;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, LO;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, LO;->a:LB;

    invoke-interface {v0}, LB;->b()Ljava/util/Collection;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/ContentReference;

    .line 90
    iget-object v2, p0, LO;->a:LB;

    invoke-interface {v2, v0}, LB;->a(Lcom/kaspersky/components/ipm/ContentReference;)V

    .line 91
    iget-object v2, p0, LO;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 94
    iget-object v0, p0, LO;->a:LB;

    invoke-interface {v0}, LB;->a()Ljava/util/SortedMap;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    iget-object v1, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 97
    :cond_3
    iget-object v0, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 98
    :goto_2
    invoke-direct {p0, v0}, LO;->a(Z)V

    goto :goto_0

    .line 97
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final a(Lay;)V
    .locals 7

    .prologue
    .line 542
    const-string v0, "IPM"

    const-string v1, "updateState was called"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, LO;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 547
    iget-object v0, p0, LO;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/ContentReference;

    .line 548
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 549
    iget-object v3, p0, LO;->b:Lcom/kaspersky/components/ipm/IpmMessageManager;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(J)V

    .line 550
    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/kaspersky/components/ipm/ContentReference;->setMessageId(J)V

    .line 552
    :cond_1
    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getNews()Lcom/kaspersky/componenets/ipm/xml/NewsType;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getNews()Lcom/kaspersky/componenets/ipm/xml/NewsType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kaspersky/componenets/ipm/xml/NewsType;->getSchedule()Lcom/kaspersky/componenets/ipm/xml/ScheduleType;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 555
    iget-object v3, p0, LO;->f:Ljava/util/SortedMap;

    invoke-direct {p0, v0, v3}, LO;->a(Lcom/kaspersky/components/ipm/ContentReference;Ljava/util/SortedMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 557
    :cond_2
    :try_start_1
    iget-object v0, p0, LO;->a:LB;

    iget-object v2, p0, LO;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, LB;->a(Ljava/util/Collection;)V

    .line 558
    iget-object v0, p0, LO;->a:LB;

    iget-object v2, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0, v2}, LB;->a(Ljava/util/SortedMap;)V

    .line 560
    iget-object v0, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 561
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    invoke-direct {p0, v0}, LO;->a(Z)V

    .line 563
    return-void

    .line 560
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a([Lcom/kaspersky/components/ipm/ContentReference;)V
    .locals 3

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expect not null value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v1, p0, LO;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    invoke-direct {p0, p1}, LO;->b([Lcom/kaspersky/components/ipm/ContentReference;)V

    .line 116
    iget-object v0, p0, LO;->a:LB;

    iget-object v2, p0, LO;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, LB;->a(Ljava/util/Collection;)V

    .line 117
    iget-object v0, p0, LO;->a:LB;

    iget-object v2, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0, v2}, LB;->a(Ljava/util/SortedMap;)V

    .line 119
    iget-object v0, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 120
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-direct {p0, v0}, LO;->a(Z)V

    .line 122
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final b()Ljava/util/Date;
    .locals 6

    .prologue
    .line 437
    iget-object v1, p0, LO;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, LO;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 440
    const-string v2, "IPM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Date is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 442
    const-string v3, "IPM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Now is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    const/16 v0, 0xc

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 446
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 448
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :goto_0
    return-object v0

    .line 450
    :cond_1
    monitor-exit v1

    .line 451
    const/4 v0, 0x0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c()V
    .locals 8

    .prologue
    .line 465
    iget-object v2, p0, LO;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 466
    :try_start_0
    iget-object v0, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 467
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 469
    iget-object v4, p0, LO;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaspersky/components/ipm/IpmMessageState;

    invoke-virtual {v1}, Lcom/kaspersky/components/ipm/IpmMessageState;->getNewsId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaspersky/components/ipm/ContentReference;

    .line 470
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/IpmMessageState;

    invoke-virtual {v0}, Lcom/kaspersky/components/ipm/IpmMessageState;->isDeactivateNews()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {v1}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 474
    iget-object v0, p0, LO;->b:Lcom/kaspersky/components/ipm/IpmMessageManager;

    invoke-virtual {v1}, Lcom/kaspersky/components/ipm/ContentReference;->getMessageId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(J)V

    .line 475
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Lcom/kaspersky/components/ipm/ContentReference;->setMessageId(J)V

    .line 483
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 484
    :cond_1
    iget-object v0, p0, LO;->a:LB;

    iget-object v1, p0, LO;->f:Ljava/util/SortedMap;

    invoke-interface {v0, v1}, LB;->a(Ljava/util/SortedMap;)V

    .line 487
    iget-object v0, p0, LO;->a:LB;

    iget-object v1, p0, LO;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, LB;->a(Ljava/util/Collection;)V

    .line 488
    monitor-exit v2

    return-void

    .line 479
    :cond_2
    invoke-direct {p0, v1}, LO;->a(Lcom/kaspersky/components/ipm/ContentReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
