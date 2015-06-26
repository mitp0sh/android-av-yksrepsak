.class public abstract Lae/javax/xml/bind/Unmarshaller$Listener;
.super Ljava/lang/Object;
.source "Unmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/javax/xml/bind/Unmarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterUnmarshal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "parent"    # Ljava/lang/Object;

    .prologue
    .line 1136
    return-void
.end method

.method public beforeUnmarshal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "parent"    # Ljava/lang/Object;

    .prologue
    .line 1119
    return-void
.end method
