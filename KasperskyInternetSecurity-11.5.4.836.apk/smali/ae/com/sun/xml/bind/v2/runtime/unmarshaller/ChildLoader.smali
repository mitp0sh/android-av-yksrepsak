.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;
.super Ljava/lang/Object;
.source "ChildLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field public final receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V
    .locals 1
    .param p1, "loader"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .param p2, "receiver"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 57
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 58
    return-void
.end method
