.class Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;

.field private final synthetic val$cl:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;

    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;->val$cl:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;->val$cl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 155
    .local v0, "ris":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 153
    .end local v0    # "ris":Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;->val$cl:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$4;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "ris":Ljava/io/InputStream;
    goto :goto_0
.end method
