.class public abstract Lae/javax/xml/bind/Marshaller$Listener;
.super Ljava/lang/Object;
.source "Marshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/javax/xml/bind/Marshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterMarshal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 817
    return-void
.end method

.method public beforeMarshal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 803
    return-void
.end method
