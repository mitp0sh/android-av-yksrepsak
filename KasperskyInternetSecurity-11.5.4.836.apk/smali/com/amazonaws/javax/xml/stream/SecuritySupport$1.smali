.class Lcom/amazonaws/javax/xml/stream/SecuritySupport$1;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/javax/xml/stream/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/javax/xml/stream/SecuritySupport;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/SecuritySupport;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/SecuritySupport$1;->this$0:Lcom/amazonaws/javax/xml/stream/SecuritySupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method
