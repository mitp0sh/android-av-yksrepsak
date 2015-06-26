.class public Lcom/kms/gui/widget/KMSWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, LoR;->a()V

    .line 29
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 16
    invoke-static {}, LoR;->a()V

    .line 17
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-static {p1, v0}, LoR;->a(Landroid/content/Context;Z)Z

    .line 23
    return-void
.end method
