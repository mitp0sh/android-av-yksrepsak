.class final Lae/com/sun/xml/bind/v2/runtime/Coordinator$1;
.super Ljava/lang/ThreadLocal;
.source "Coordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/Coordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/Coordinator$1;->initialValue()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method
