.class public abstract Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
.super Ljava/lang/Object;
.source "AttachmentUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAttachmentAsByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getAttachmentAsDataHandler(Ljava/lang/String;)Ljavax/activation/DataHandler;
.end method

.method public isXOPPackage()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method
