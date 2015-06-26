.class public final LvZ;
.super LvM;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lwc;)V
    .locals 2

    .prologue
    .line 12
    const-string v0, "setting_dropdown"

    const v1, 0x7f030058

    invoke-direct {p0, v0, p1, v1}, LvM;-><init>(Ljava/lang/String;Lwc;I)V

    .line 13
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lwc;

    invoke-virtual {p0, p1, p2, p3}, LvZ;->a(Lwc;Landroid/content/Context;LbX;)V

    return-void
.end method

.method protected final a(Lwc;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, LvM;->a(Lwc;Landroid/content/Context;LbX;)V

    .line 18
    return-void
.end method

.method public final bridge synthetic g()LbR;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, LvM;->g()LbR;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()LbR;
    .locals 1

    .prologue
    .line 7
    invoke-super {p0}, LvM;->h()LbR;

    move-result-object v0

    return-object v0
.end method
