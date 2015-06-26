.class public final LqH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, LqH;->c:Lcom/kms/kmsshared/KMSApplication;

    iput-object p2, p0, LqH;->a:Ljava/lang/String;

    iput-object p3, p0, LqH;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 954
    iget-object v0, p0, LqH;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LqH;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LqH;->c:Lcom/kms/kmsshared/KMSApplication;

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->a(Lcom/kms/kmsshared/KMSApplication;)LsQ;

    move-result-object v0

    invoke-virtual {v0}, LsQ;->a()LaC;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Alarm:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    iget-object v2, p0, LqH;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LcW;->a(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Ljava/lang/String;)V

    .line 958
    :cond_1
    return-void
.end method
