.class public Lcom/kms/kmsshared/cellmon/VoiceEvent;
.super Lcom/kms/kmsshared/cellmon/CellPhoneEvent;
.source "SourceFile"


# static fields
.field public static final EVENT_CALLLOG_ADDED:I = 0x3

.field public static final EVENT_DISCONNECT:I = 0x1

.field public static final EVENT_IDLE:I = 0x2

.field public static final EVENT_RING:I


# instance fields
.field public mCallLogType:I

.field public mEventType:I

.field public mId:J

.field private mRingerMode:I

.field public mSaveRingerMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public block(Z)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/kms/kmsshared/cellmon/VoiceEvent;->setHandled()V

    .line 46
    iput-boolean v4, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mBlocked:Z

    .line 47
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 48
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 49
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mRingerMode:I

    .line 50
    iget-boolean v2, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mSaveRingerMode:Z

    if-eqz v2, :cond_0

    .line 52
    iget v2, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mRingerMode:I

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 60
    :cond_0
    iget v0, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mEventType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 62
    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id =?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    :cond_1
    :goto_0
    iget v0, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mEventType:I

    if-nez v0, :cond_2

    .line 85
    invoke-static {}, Lcom/kms/kmsshared/Utils;->d()V

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kms/privacyprotection/gui/FakeActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LrM;

    invoke-direct {v1, p0}, LrM;-><init>(Lcom/kms/kmsshared/cellmon/VoiceEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    :cond_2
    invoke-static {}, Lcom/kms/kmsshared/Utils;->b()V

    .line 123
    return-void

    .line 69
    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "number =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public free()V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/kms/kmsshared/cellmon/VoiceEvent;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 130
    iget-boolean v1, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mSaveRingerMode:Z

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 133
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 135
    iget v2, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mRingerMode:I

    if-eq v1, v2, :cond_0

    .line 136
    iget v1, p0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mRingerMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 144
    :cond_0
    return-void
.end method
