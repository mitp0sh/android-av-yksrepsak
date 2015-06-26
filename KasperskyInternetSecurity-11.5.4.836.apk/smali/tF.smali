.class public abstract LtF;
.super Lte;
.source "SourceFile"


# instance fields
.field private d:Z

.field e:Ljava/lang/String;

.field f:Lgp;


# direct methods
.method public constructor <init>(Ltf;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lte;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, LtF;->d:Z

    .line 33
    iput-object p1, p0, LtF;->b:Ltf;

    .line 34
    invoke-static {}, Lkr;->a()Lgp;

    move-result-object v0

    iput-object v0, p0, LtF;->f:Lgp;

    .line 35
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    iput-boolean v3, p0, LtF;->d:Z

    .line 39
    iget-object v0, p0, LtF;->b:Ltf;

    invoke-interface {v0, v3}, Ltf;->a(I)V

    .line 43
    iget-object v0, p0, LtF;->b:Ltf;

    invoke-interface {v0, v1}, Ltf;->b(I)V

    .line 49
    const-string v0, ""

    .line 51
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 52
    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    move v2, v3

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 54
    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LtF;->e:Ljava/lang/String;

    .line 55
    iget-object v0, p0, LtF;->f:Lgp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, LtF;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, p3}, Lgp;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, LtF;->f:Lgp;

    invoke-virtual {v0}, Lgp;->a()I

    move-result v0

    const/4 v6, -0x4

    if-ne v0, v6, :cond_2

    .line 71
    iget-object v0, p0, LtF;->b:Ltf;

    const/16 v1, 0x25a

    invoke-interface {v0, v4, v1, v10}, Ltf;->a(IILjava/lang/String;)V

    .line 157
    :cond_1
    :goto_1
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, LtF;->f:Lgp;

    invoke-virtual {v0}, Lgp;->a()I

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, LtF;->f:Lgp;

    invoke-virtual {v0}, Lgp;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v2, v4

    .line 79
    goto :goto_0

    .line 84
    :cond_3
    :try_start_0
    new-instance v0, LtD;

    iget-object v6, p0, LtF;->f:Lgp;

    invoke-virtual {v6}, Lgp;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, LtD;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, LtD;->b()I

    move-result v6

    .line 90
    sparse-switch v6, :sswitch_data_0

    .line 125
    iget-object v1, p0, LtF;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, LtF;->a(LtD;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 92
    :sswitch_0
    iget-object v6, p0, LtF;->e:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    invoke-virtual {v0}, LtD;->a()[Ljava/lang/String;

    move-result-object v6

    .line 97
    if-eqz v6, :cond_0

    .line 98
    array-length v7, v6

    move v0, v3

    :goto_2
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 100
    iget-object v9, p0, LtF;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 101
    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_1
    move v2, v4

    .line 112
    goto/16 :goto_0

    :sswitch_2
    move v2, v4

    .line 117
    goto/16 :goto_0

    .line 120
    :sswitch_3
    iget-object v0, p0, LtF;->b:Ltf;

    const/4 v1, 0x1

    new-instance v2, Ltc;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v6, v7}, Ltc;-><init>(ZILjava/lang/String;LsX;)V

    invoke-interface {v0, v1, v2}, Ltf;->a(ILtc;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    iget-object v0, p0, LtF;->b:Ltf;

    const/4 v1, 0x5

    invoke-interface {v0, v4, v1, v10}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_5
    if-eqz v2, :cond_6

    .line 147
    iget-object v0, p0, LtF;->b:Ltf;

    const/4 v2, 0x3

    invoke-interface {v0, v4, v2, v1}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_6
    iget-object v0, p0, LtF;->b:Ltf;

    const/16 v1, 0x26e

    invoke-interface {v0, v4, v1, v10}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x11 -> :sswitch_3
        0x3e6 -> :sswitch_1
        0x3e7 -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract a(LtB;LtB;J)Z
.end method

.method public final a(LtD;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 161
    .line 163
    :try_start_0
    invoke-virtual {p1}, LtD;->b()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 171
    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    move v0, v1

    .line 262
    :goto_2
    return v0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 174
    invoke-virtual {p1, v2, v3}, LtD;->a(J)LtB;

    move-result-object v4

    .line 176
    invoke-virtual {p1, v2, v3}, LtD;->b(J)LtB;

    move-result-object v5

    .line 179
    :try_start_1
    invoke-virtual {p0, v4, v5, v2, v3}, LtF;->a(LtB;LtB;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 193
    :pswitch_2
    iget-object v2, p0, LtF;->b:Ltf;

    const/16 v3, 0x275

    invoke-interface {v2, v0, v3, v6}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 198
    :pswitch_3
    iget-object v2, p0, LtF;->b:Ltf;

    const/16 v3, 0x26e

    invoke-interface {v2, v0, v3, v6}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 208
    :pswitch_4
    iget-object v2, p0, LtF;->b:Ltf;

    const/4 v3, 0x6

    invoke-interface {v2, v0, v3, v6}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 215
    :pswitch_5
    iget-object v2, p0, LtF;->b:Ltf;

    const/16 v3, 0x259

    invoke-interface {v2, v0, v3, v6}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 220
    :pswitch_6
    iget-object v2, p0, LtF;->b:Ltf;

    const v3, 0xdead

    invoke-interface {v2, v0, v3, v6}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 225
    :pswitch_7
    iget-object v2, p0, LtF;->b:Ltf;

    const/16 v3, 0x3ef

    invoke-interface {v2, v0, v3, v6}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 230
    :pswitch_8
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, LtD;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 231
    invoke-virtual {p0}, LtF;->b()V

    .line 233
    iget-object v3, p0, LtF;->b:Ltf;

    const/4 v4, 0x7

    invoke-interface {v3, v0, v4, v2}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 238
    :pswitch_9
    iget-object v2, p0, LtF;->b:Ltf;

    const/16 v3, 0x25b

    invoke-interface {v2, v0, v3, v6}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 186
    :catch_1
    move-exception v2

    .line 252
    :pswitch_a
    iget-object v2, p0, LtF;->b:Ltf;

    const/4 v3, 0x5

    invoke-interface {v2, v0, v3, v6}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method protected abstract b()V
.end method
