.class Lcom/amazonaws/javax/xml/stream/SecuritySupport$5;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/javax/xml/stream/SecuritySupport;->doesFileExist(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/javax/xml/stream/SecuritySupport;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/SecuritySupport;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/SecuritySupport$5;->this$0:Lcom/amazonaws/javax/xml/stream/SecuritySupport;

    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/SecuritySupport$5;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/SecuritySupport$5;->val$f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method