.class public abstract Lae/javax/xml/bind/attachment/AttachmentMarshaller;
.super Ljava/lang/Object;
.source "AttachmentMarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addMtomAttachment(Ljavax/activation/DataHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract addMtomAttachment([BIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract addSwaRefAttachment(Ljavax/activation/DataHandler;)Ljava/lang/String;
.end method

.method public isXOPPackage()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method
