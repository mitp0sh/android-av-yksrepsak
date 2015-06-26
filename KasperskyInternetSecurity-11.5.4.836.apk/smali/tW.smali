.class final LtW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:LtV;


# direct methods
.method constructor <init>(LtV;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, LtW;->b:LtV;

    iput-object p2, p0, LtW;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, LtW;->b:LtV;

    iget-object v0, p0, LtW;->a:Landroid/content/Context;

    invoke-static {v0}, LtV;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method
