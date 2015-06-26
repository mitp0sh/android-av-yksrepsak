.class public final LgS;
.super Lho;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lho;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object p4, p0, LgS;->a:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, LgS;->a:Ljava/lang/String;

    return-object v0
.end method
