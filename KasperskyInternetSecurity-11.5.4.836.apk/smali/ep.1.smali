.class public final Lep;
.super Len;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Len;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lee;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10
    if-nez p1, :cond_0

    .line 19
    :goto_0
    return-void

    .line 13
    :cond_0
    check-cast p1, Leo;

    .line 14
    invoke-virtual {p1}, Leo;->e()Leo;

    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Leo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Leo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    :cond_1
    invoke-virtual {p1}, Leo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Leo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
