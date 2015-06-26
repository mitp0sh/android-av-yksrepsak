.class final Luq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltf;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Luq;->a:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 77
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 78
    iget-object v1, p0, Luq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsk;->d(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lsk;->g_()V

    .line 81
    :cond_0
    return-void
.end method

.method public final a(ILtc;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
