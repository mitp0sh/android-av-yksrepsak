.class final LdD;
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
    .line 126
    iput-object p1, p0, LdD;->a:LdB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, LdD;->a:LdB;

    iget-object v0, v0, LdB;->a:LdA;

    invoke-virtual {v0}, LdA;->a()V

    .line 130
    return-void
.end method
