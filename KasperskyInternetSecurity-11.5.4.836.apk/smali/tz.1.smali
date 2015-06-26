.class public final Ltz;
.super Ltx;
.source "SourceFile"


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltf;LsY;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ltx;-><init>(Ltf;LsY;)V

    .line 18
    iput-object p3, p0, Ltz;->g:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Ltz;->b:Ltf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltf;->a(I)V

    .line 25
    iget-object v0, p0, Ltz;->b:Ltf;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ltf;->b(I)V

    .line 29
    :try_start_0
    new-instance v0, LtD;

    iget-object v1, p0, Ltz;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, LtD;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Ltz;->a(LtD;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    iget-object v0, p0, Ltz;->b:Ltf;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_0
.end method
