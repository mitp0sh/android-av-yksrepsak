.class public Lcom/kms/kmsshared/cellmon/SMSEvent;
.super Lcom/kms/kmsshared/cellmon/CellPhoneEvent;
.source "SourceFile"


# static fields
.field public static final EVENT_INBOX_CHANGED:I = 0x1

.field public static final EVENT_NEW_SMS_RECIEVED:I = 0x0

.field public static final EVENT_SENT_CHANGED:I = 0x2


# instance fields
.field public mDate:J

.field public mEventType:I

.field private mId:J

.field public mRecordId:J

.field public mSMSBody:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;-><init>()V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    .line 35
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;-><init>()V

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    .line 38
    iput-wide p1, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mId:J

    .line 39
    return-void
.end method


# virtual methods
.method public block(Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/kms/kmsshared/cellmon/SMSEvent;->setHandled()V

    .line 44
    iput-boolean v7, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mBlocked:Z

    .line 51
    iget-wide v0, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    const-string v2, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    sget-object v2, Lcom/kms/kmsshared/Utils;->a:Landroid/net/Uri;

    const-string v3, "thread_id=? AND date=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-wide v5, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    if-eqz p1, :cond_2

    .line 64
    iget-wide v1, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 65
    iget-wide v1, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mId:J

    invoke-static {v0, v1, v2}, LqR;->a(Landroid/content/ContentResolver;J)I

    .line 80
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kms/kmsshared/Utils;->c()V

    .line 81
    return-void

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://sms/conversations/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "body=?"

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://sms/conversations/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mRecordId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mId:J

    return-wide v0
.end method

.method public getSMSBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    return-object v0
.end method

.method public setSMSBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    .line 33
    return-void
.end method
