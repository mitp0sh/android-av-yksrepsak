.class public Lcom/amazonaws/services/simpledb/model/NumberSubmittedAttributesExceededException;
.super Lcom/amazonaws/AmazonServiceException;
.source "NumberSubmittedAttributesExceededException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private boxUsage:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getBoxUsage()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/NumberSubmittedAttributesExceededException;->boxUsage:Ljava/lang/Float;

    return-object v0
.end method

.method public setBoxUsage(Ljava/lang/Float;)V
    .locals 0
    .param p1, "boxUsage"    # Ljava/lang/Float;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/NumberSubmittedAttributesExceededException;->boxUsage:Ljava/lang/Float;

    .line 55
    return-void
.end method
