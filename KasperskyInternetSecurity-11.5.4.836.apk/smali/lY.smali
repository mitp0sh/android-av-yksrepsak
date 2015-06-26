.class final LlY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:LlX;


# direct methods
.method constructor <init>(LlX;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, LlY;->a:LlX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, LlY;->a:LlX;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LlX;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
