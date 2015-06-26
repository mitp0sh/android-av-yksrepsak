.class public final Lih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lie;)Lic;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lig;

    invoke-direct {v0, p2}, Lig;-><init>(Lie;)V

    .line 12
    :try_start_0
    invoke-virtual {v0, p1}, Lig;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-object v0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
