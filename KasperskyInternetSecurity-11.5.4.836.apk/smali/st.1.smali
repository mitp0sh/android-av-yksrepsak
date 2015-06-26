.class public final Lst;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 21
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lsj;->m()I

    move-result v4

    .line 24
    if-ge v4, v1, :cond_6

    .line 26
    const-class v1, Lsj;

    monitor-enter v1

    .line 27
    :try_start_0
    invoke-virtual {v0}, Lsj;->n()V

    .line 28
    invoke-virtual {v0}, Lsj;->g_()V

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v5

    .line 32
    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 33
    const/16 v1, 0xa

    invoke-virtual {v5, v1}, Lse;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v5, v0}, Lse;->i(Z)V

    .line 35
    invoke-virtual {v5}, Lse;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v5, v2}, Lse;->h(Z)V

    .line 38
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v0

    .line 39
    const-class v1, Lsl;

    monitor-enter v1

    .line 40
    :try_start_1
    invoke-virtual {v0}, Lsl;->d()I

    move-result v2

    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lsl;->c(I)V

    .line 43
    invoke-virtual {v0}, Lsl;->g_()V

    .line 45
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :try_start_2
    invoke-static {}, Lst;->b()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    :goto_1
    invoke-static {}, Lst;->e()V

    .line 60
    :cond_3
    :goto_2
    const/4 v0, 0x6

    if-ge v4, v0, :cond_4

    .line 62
    invoke-static {}, Lst;->d()V

    .line 65
    :cond_4
    invoke-static {}, Lst;->c()V

    .line 66
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    move v0, v2

    .line 34
    goto :goto_0

    .line 45
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 54
    :cond_6
    if-ne v4, v1, :cond_3

    .line 56
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->fix()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b()V
    .locals 5

    .prologue
    .line 153
    invoke-static {}, Lcom/kms/free/antispam/AntiSpamStorage;->instance()Lcom/kms/free/antispam/AntiSpamStorage;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->createEmptyStorage()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v2

    .line 156
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kms/free/antispam/AntiSpamStorage;->getIterator(I)Ljava/util/Enumeration;

    move-result-object v3

    .line 157
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamItem;

    .line 159
    new-instance v4, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v4, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/free/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v4}, Lcom/kms/antispam/AntiSpamStorage;->create(Lcom/kms/antispam/AntiSpamItem;)I

    goto :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/kms/free/antispam/AntiSpamStorage;->getIterator(I)Ljava/util/Enumeration;

    move-result-object v1

    .line 163
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamItem;

    .line 165
    new-instance v3, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v3, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/free/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v3}, Lcom/kms/antispam/AntiSpamStorage;->create(Lcom/kms/antispam/AntiSpamItem;)I

    goto :goto_1

    .line 168
    :cond_1
    return-void
.end method

.method private static c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-static {}, Lsr;->k()Lsh;

    move-result-object v0

    .line 71
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v1

    invoke-virtual {v1}, Lsl;->c()I

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0, v3}, Lsh;->a(Z)V

    .line 77
    :cond_0
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v1

    invoke-virtual {v1}, Lsb;->a()I

    move-result v1

    sget-object v2, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    invoke-virtual {v2}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 80
    invoke-virtual {v0, v3}, Lsh;->c(Z)V

    .line 83
    :cond_1
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v1

    invoke-virtual {v1}, Lsb;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    invoke-virtual {v0, v3}, Lsh;->d(Z)V

    .line 89
    :cond_2
    invoke-virtual {v0}, Lsh;->g_()V

    .line 90
    return-void
.end method

.method private static d()V
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lsl;->d()I

    move-result v2

    .line 97
    const/16 v0, 0x8

    .line 99
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 100
    const/16 v0, 0xa

    .line 103
    :cond_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 104
    or-int/lit8 v0, v0, 0x1

    .line 107
    :cond_1
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_2

    .line 108
    or-int/lit8 v0, v0, 0x10

    .line 111
    :cond_2
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_3

    .line 112
    or-int/lit8 v0, v0, 0x20

    .line 115
    :cond_3
    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_4

    .line 116
    or-int/lit8 v0, v0, 0x40

    .line 118
    :cond_4
    invoke-virtual {v1, v0}, Lsl;->c(I)V

    .line 121
    invoke-virtual {v1}, Lsl;->g_()V

    .line 122
    return-void
.end method

.method private static e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    .line 126
    const-string v1, "apOn"

    invoke-virtual {v0, v1}, Lsu;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "backup_ap_mode"

    invoke-virtual {v0, v1}, Lsu;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "apOn"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 128
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v2

    .line 130
    if-eqz v1, :cond_1

    .line 131
    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Standard:Lcom/kms/antiphishing/AntiPhishingMode;

    invoke-virtual {v1}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lsb;->a(I)V

    .line 135
    :goto_0
    invoke-virtual {v2}, Lsb;->g_()V

    .line 137
    invoke-static {}, Lsr;->k()Lsh;

    move-result-object v1

    .line 138
    const-string v2, "backup_ap_mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsu;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 139
    if-eqz v2, :cond_2

    .line 140
    sget-object v2, Lcom/kms/antiphishing/AntiPhishingMode;->Standard:Lcom/kms/antiphishing/AntiPhishingMode;

    invoke-virtual {v2}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lsh;->c(I)V

    .line 144
    :goto_1
    invoke-virtual {v1}, Lsh;->g_()V

    .line 145
    const-string v1, "apOn"

    invoke-virtual {v0, v1}, Lsu;->b(Ljava/lang/String;)V

    .line 146
    const-string v1, "backup_ap_mode"

    invoke-virtual {v0, v1}, Lsu;->b(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lsu;->b()V

    .line 150
    :cond_0
    return-void

    .line 133
    :cond_1
    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    invoke-virtual {v1}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lsb;->a(I)V

    goto :goto_0

    .line 142
    :cond_2
    sget-object v2, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    invoke-virtual {v2}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lsh;->c(I)V

    goto :goto_1
.end method
