.class final LdC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LdB;


# direct methods
.method constructor <init>(LdB;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, LdC;->a:LdB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, LdC;->a:LdB;

    iget-object v0, v0, LdB;->a:LdA;

    invoke-static {v0}, LdA;->c(LdA;)Ln;

    move-result-object v0

    invoke-interface {v0}, Ln;->a()V

    .line 117
    return-void
.end method
