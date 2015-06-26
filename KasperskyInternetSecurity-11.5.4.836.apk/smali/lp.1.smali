.class public final Llp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LrE;


# instance fields
.field private a:Llw;

.field private b:Llm;

.field private c:Lln;

.field private d:Llo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V
    .locals 3

    .prologue
    const/16 v2, 0x3e

    .line 174
    instance-of v0, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 175
    check-cast v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    iget v0, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f0702a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    instance-of v0, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 184
    check-cast v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    iget v0, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-nez v0, :cond_0

    .line 185
    const/16 v0, 0x3d

    iget-object v1, p0, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 191
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v1

    .line 192
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Llp;->d:Llo;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    iput-object v0, p0, Llp;->d:Llo;

    .line 200
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {v1, v3}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Llp;->c:Lln;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lln;

    invoke-direct {v0}, Lln;-><init>()V

    iput-object v0, p0, Llp;->c:Lln;

    .line 211
    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    if-eqz v0, :cond_4

    .line 213
    new-instance v1, Llm;

    invoke-direct {v1, v0}, Llm;-><init>(I)V

    iput-object v1, p0, Llp;->b:Llm;

    .line 217
    :goto_2
    return-void

    .line 197
    :cond_2
    iput-object v2, p0, Llp;->d:Llo;

    goto :goto_0

    .line 208
    :cond_3
    iput-object v2, p0, Llp;->c:Lln;

    goto :goto_1

    .line 215
    :cond_4
    iput-object v2, p0, Llp;->b:Llm;

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Llw;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Llp;->a:Llw;

    .line 40
    invoke-direct {p0}, Llp;->c()V

    .line 41
    return-void
.end method

.method public final declared-synchronized a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 44
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lsr;->d()Lsc;

    move-result-object v2

    .line 45
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 46
    if-nez v4, :cond_0

    move v1, v3

    .line 170
    :goto_0
    monitor-exit p0

    return v1

    .line 49
    :cond_0
    :try_start_1
    instance-of v1, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    if-eqz v1, :cond_2

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    move-object v1, v0

    .line 51
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lsc;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 52
    iget v5, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-eq v5, v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v1, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    cmp-long v1, v5, v1

    if-lez v1, :cond_2

    :cond_1
    move v1, v3

    .line 55
    goto :goto_0

    .line 58
    :cond_2
    instance-of v1, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    if-eqz v1, :cond_3

    .line 59
    move-object v0, p1

    check-cast v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    move-object v1, v0

    iget v1, v1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mCallLogType:I

    if-ne v1, v7, :cond_3

    move v1, v3

    .line 61
    goto :goto_0

    .line 64
    :cond_3
    invoke-direct {p0}, Llp;->c()V

    .line 67
    packed-switch v4, :pswitch_data_0

    .line 170
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->isHandled()Z

    move-result v1

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object v1, p0, Llp;->d:Llo;

    if-eqz v1, :cond_5

    .line 70
    iget-object v1, p0, Llp;->d:Llo;

    invoke-static {p1}, Llo;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)I

    move-result v1

    .line 71
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 72
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 73
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 77
    :cond_5
    :try_start_2
    iget-object v1, p0, Llp;->b:Llm;

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Llp;->b:Llm;

    invoke-virtual {v1, p1}, Llm;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)I

    move-result v1

    .line 79
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_6

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 81
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    goto :goto_1

    .line 84
    :cond_6
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_7

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 86
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    goto :goto_1

    .line 89
    :cond_7
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 91
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    goto :goto_1

    .line 97
    :pswitch_1
    iget-object v1, p0, Llp;->c:Lln;

    if-eqz v1, :cond_8

    .line 98
    iget-object v1, p0, Llp;->c:Lln;

    invoke-static {p1}, Lln;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)I

    move-result v1

    .line 99
    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    .line 100
    :cond_8
    iget-object v1, p0, Llp;->b:Llm;

    if-eqz v1, :cond_9

    .line 104
    iget-object v1, p0, Llp;->b:Llm;

    invoke-virtual {v1, p1}, Llm;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)I

    move-result v1

    .line 105
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_4

    .line 106
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_4

    .line 109
    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_4

    .line 112
    :cond_9
    iget-object v1, p0, Llp;->b:Llm;

    if-nez v1, :cond_a

    iget-object v1, p0, Llp;->c:Lln;

    if-eqz v1, :cond_4

    .line 116
    :cond_a
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 117
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    goto :goto_1

    .line 121
    :pswitch_2
    iget-object v1, p0, Llp;->b:Llm;

    if-eqz v1, :cond_11

    .line 122
    iget-object v1, p0, Llp;->b:Llm;

    invoke-virtual {v1, p1}, Llm;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)I

    move-result v1

    .line 123
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_b

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 125
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    goto/16 :goto_1

    .line 127
    :cond_b
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_c

    .line 128
    invoke-virtual {p1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->setHandled()V

    goto/16 :goto_1

    .line 131
    :cond_c
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_d

    .line 132
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 133
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    goto/16 :goto_1

    .line 136
    :cond_d
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_4

    .line 137
    iget-object v2, p0, Llp;->d:Llo;

    if-eqz v2, :cond_e

    .line 141
    iget-object v2, p0, Llp;->d:Llo;

    invoke-static {p1}, Llo;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)I

    move-result v2

    .line 142
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 144
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    goto/16 :goto_1

    .line 148
    :cond_e
    iget-object v2, p0, Llp;->c:Lln;

    if-eqz v2, :cond_f

    .line 149
    iget-object v2, p0, Llp;->c:Lln;

    invoke-static {p1}, Lln;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)I

    move-result v2

    .line 150
    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_4

    .line 151
    :cond_f
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_10

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 156
    invoke-static {p1}, Llp;->b(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    goto/16 :goto_1

    .line 159
    :cond_10
    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_4

    .line 160
    :cond_11
    iget-object v1, p0, Llp;->a:Llw;

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Llp;->a:Llw;

    invoke-interface {v1, p1}, Llw;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()Llv;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Llp;->b:Llm;

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0}, Llp;->c()V

    .line 230
    :cond_0
    iget-object v0, p0, Llp;->b:Llm;

    return-object v0
.end method
