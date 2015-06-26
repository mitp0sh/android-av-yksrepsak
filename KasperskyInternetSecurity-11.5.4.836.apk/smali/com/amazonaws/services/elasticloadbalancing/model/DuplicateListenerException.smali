.class public Lcom/amazonaws/services/elasticloadbalancing/model/DuplicateListenerException;
.super Lcom/amazonaws/AmazonServiceException;
.source "DuplicateListenerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
