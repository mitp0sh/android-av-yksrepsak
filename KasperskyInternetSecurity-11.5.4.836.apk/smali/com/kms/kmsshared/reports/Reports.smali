.class public Lcom/kms/kmsshared/reports/Reports;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final transient FILTER_ADMINKIT:I = 0x40

.field public static final transient FILTER_ALL:I = 0xffff

.field public static final transient FILTER_ANTI_PHISHING:I = 0x20

.field public static final transient FILTER_ANTI_SPAM:I = 0x4

.field public static final transient FILTER_ANTI_THEFT:I = 0x2

.field public static final transient FILTER_AV_AND_UPDATER:I = 0x10

.field public static final transient FILTER_GENERAL:I = 0x8

.field public static final transient FILTER_PRIVACY_PROTECTION:I = 0x1

.field private static transient a:Lcom/kms/kmsshared/reports/Reports;

.field private static final serialVersionUID:J


# instance fields
.field private mEvents:Ljava/util/Vector;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    .line 37
    return-void
.end method

.method private static declared-synchronized a()Lcom/kms/kmsshared/reports/Reports;
    .locals 2

    .prologue
    .line 117
    const-class v1, Lcom/kms/kmsshared/reports/Reports;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/reports/Reports;->a:Lcom/kms/kmsshared/reports/Reports;

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->b()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/reports/Reports;->a:Lcom/kms/kmsshared/reports/Reports;

    .line 120
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/reports/Reports;->a:Lcom/kms/kmsshared/reports/Reports;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/kms/kmsshared/reports/Reports;->b(I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(I[Ljava/io/Serializable;)V
    .locals 3

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/kms/kmsshared/reports/Event$Info;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/kms/kmsshared/reports/Event$Info;-><init>(I[Ljava/io/Serializable;I)V

    .line 182
    iget-object v1, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    iget-object v2, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/kms/kmsshared/reports/Reports;->d()V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/kms/kmsshared/reports/Reports;->c()V

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static add(I)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 42
    return-void
.end method

.method public static add(II)V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Serializable;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 47
    return-void
.end method

.method public static add(IIZ)V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Serializable;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 62
    return-void
.end method

.method public static add(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Serializable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 52
    return-void
.end method

.method public static add(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Serializable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 57
    return-void
.end method

.method public static add(I[Ljava/io/Serializable;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/kms/kmsshared/reports/Reports;->a(I[Ljava/io/Serializable;)V

    .line 67
    return-void
.end method

.method public static addDetection(Lcom/kavsdk/antivirus/ThreatType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 346
    sget-object v0, Lsa;->a:[I

    invoke-virtual {p0}, Lcom/kavsdk/antivirus/ThreatType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type of detected problem is not Riskware, Adware or Malware"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_0
    const/16 v0, 0x33

    .line 361
    :goto_0
    new-array v1, v1, [Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 362
    return-void

    .line 351
    :pswitch_1
    const/16 v0, 0x32

    .line 352
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 356
    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static b()Lcom/kms/kmsshared/reports/Reports;
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/io/File;

    const-string v2, "reports.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-static {v1}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Reports;

    .line 129
    if-nez v0, :cond_0

    new-instance v0, Lcom/kms/kmsshared/reports/Reports;

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/Reports;-><init>()V

    :cond_0
    return-object v0
.end method

.method private b(I)Ljava/util/Vector;
    .locals 6

    .prologue
    .line 204
    iget-object v3, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    monitor-enter v3

    .line 205
    const v0, 0xffff

    if-ne p1, v0, :cond_0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    monitor-exit v3

    .line 300
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 209
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 210
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Event;

    .line 212
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    .line 213
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 214
    const/16 v5, 0x38

    if-eq v4, v5, :cond_1

    const/16 v5, 0x39

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_1

    const/16 v5, 0x44

    if-eq v4, v5, :cond_1

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    .line 221
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 224
    :cond_2
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_4

    .line 225
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 226
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/16 v5, 0x32

    if-eq v4, v5, :cond_3

    const/16 v5, 0x33

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    const/16 v5, 0x49

    if-eq v4, v5, :cond_3

    const/16 v5, 0xe

    if-eq v4, v5, :cond_3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    const/16 v5, 0x34

    if-eq v4, v5, :cond_3

    const/16 v5, 0x35

    if-eq v4, v5, :cond_3

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_4

    .line 245
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 248
    :cond_4
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_6

    .line 249
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 250
    const/16 v5, 0x17

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_5

    const/16 v5, 0x13

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_5

    const/16 v5, 0x41

    if-eq v4, v5, :cond_5

    const/16 v5, 0x46

    if-eq v4, v5, :cond_5

    const/16 v5, 0x47

    if-eq v4, v5, :cond_5

    const/16 v5, 0x42

    if-eq v4, v5, :cond_5

    const/16 v5, 0x43

    if-ne v4, v5, :cond_6

    .line 263
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 266
    :cond_6
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_8

    .line 267
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 268
    const/16 v5, 0x3d

    if-eq v4, v5, :cond_7

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_8

    .line 271
    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 274
    :cond_8
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_a

    .line 275
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 276
    const/16 v5, 0xb

    if-eq v4, v5, :cond_9

    const/16 v5, 0xc

    if-eq v4, v5, :cond_9

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_9

    const/16 v5, 0x40

    if-ne v4, v5, :cond_a

    .line 281
    :cond_9
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 284
    :cond_a
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_c

    .line 285
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 286
    const/16 v5, 0x48

    if-eq v4, v5, :cond_b

    const/16 v5, 0x4b

    if-ne v4, v5, :cond_c

    .line 289
    :cond_b
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 293
    :cond_c
    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_d

    .line 294
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    const/16 v5, 0x37

    if-ge v4, v5, :cond_d

    .line 296
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 209
    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 300
    :cond_e
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 3

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/io/File;

    const-string v2, "reports.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    invoke-static {v1, p0}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v0

    .line 139
    if-nez v0, :cond_0

    .line 141
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t save "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 192
    move v0, v1

    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method public static getEventGroup(I)I
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 308
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x32

    if-eq p0, v1, :cond_0

    const/16 v1, 0x33

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x34

    if-eq p0, v1, :cond_0

    const/16 v1, 0x35

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0x49

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4a

    if-ne p0, v1, :cond_2

    .line 326
    :cond_0
    const/16 v0, 0x10

    .line 336
    :cond_1
    :goto_0
    return v0

    .line 328
    :cond_2
    const/16 v1, 0x3d

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq p0, v1, :cond_1

    .line 332
    const/16 v0, 0x48

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4b

    if-ne p0, v0, :cond_4

    .line 334
    :cond_3
    const/16 v0, 0x20

    goto :goto_0

    .line 336
    :cond_4
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getEvents()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    const v1, 0xffff

    invoke-direct {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->a(I)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getEventsCount(I)I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/kms/kmsshared/reports/Reports;->b(I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public static getFilteredEvents(I)Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/kms/kmsshared/reports/Reports;->a(I)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getFilteredEventsInVector(I)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/kms/kmsshared/reports/Reports;->b(I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    return-object v0
.end method

.method public static declared-synchronized removeAll()V
    .locals 3

    .prologue
    .line 92
    const-class v1, Lcom/kms/kmsshared/reports/Reports;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    iget-object v2, v0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 95
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/Reports;->c()V

    .line 96
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeGroup(I)V
    .locals 5

    .prologue
    .line 101
    const-class v2, Lcom/kms/kmsshared/reports/Reports;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    iget-object v3, v0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    iget-object v4, v0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    .line 104
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 106
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Event;

    .line 107
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v0

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->getEventGroup(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 108
    invoke-virtual {v4, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 104
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/Reports;->c()V

    .line 112
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
