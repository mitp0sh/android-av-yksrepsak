.class public final Lpu;
.super Lrv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lps;Lcom/kms/issues/IssueEventType;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lrv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lps;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lpu;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps;

    return-object v0
.end method
