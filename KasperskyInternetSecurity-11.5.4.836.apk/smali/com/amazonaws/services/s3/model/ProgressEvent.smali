.class public Lcom/amazonaws/services/s3/model/ProgressEvent;
.super Ljava/lang/Object;
.source "ProgressEvent.java"


# static fields
.field public static final CANCELED_EVENT_CODE:I = 0x8

.field public static final COMPLETED_EVENT_CODE:I = 0x2

.field public static final FAILED_EVENT_CODE:I = 0x4

.field public static final PART_COMPLETED_EVENT_CODE:I = 0x800

.field public static final PART_FAILED_EVENT_CODE:I = 0x1000

.field public static final PART_STARTED_EVENT_CODE:I = 0x400

.field public static final STARTED_EVENT_CODE:I = 0x1


# instance fields
.field private bytesTransfered:I

.field private eventCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "bytesTransfered"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amazonaws/services/s3/model/ProgressEvent;->bytesTransfered:I

    .line 47
    return-void
.end method


# virtual methods
.method public getBytesTransfered()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/amazonaws/services/s3/model/ProgressEvent;->bytesTransfered:I

    return v0
.end method

.method public getEventCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/amazonaws/services/s3/model/ProgressEvent;->eventCode:I

    return v0
.end method

.method public setBytesTransfered(I)V
    .locals 0
    .param p1, "bytesTransfered"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/amazonaws/services/s3/model/ProgressEvent;->bytesTransfered:I

    .line 57
    return-void
.end method

.method public setEventCode(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/amazonaws/services/s3/model/ProgressEvent;->eventCode:I

    .line 89
    return-void
.end method
