.class public final LwC;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kms/updater/gui/AppUpdaterEventType;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, LwC;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
