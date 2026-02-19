# frozen_string_literal: true

class Views::Public::Index < Views::Base
  def view_template
    div(class: "font-mono min-h-screen bg-background text-foreground") do
      # Hero
      div(class: "flex flex-col items-center justify-center min-h-[80vh] px-6 text-center") do
        div(class: "mb-6") do
          span(class: "text-xs tracking-widest uppercase text-muted-foreground border border-border px-3 py-1") do
            "Open Source"
          end
        end

        h1(class: "text-4xl sm:text-6xl font-bold tracking-tighter mb-6 max-w-3xl") do
          "A component library and registry for Ruby."
        end

        p(class: "text-lg text-muted-foreground max-w-xl mb-10 leading-relaxed") do
          "SethUI gives you a collection of accessible, composable components built with Phlex. Copy, paste, and ship."
        end

        div(class: "flex flex-col sm:flex-row items-center gap-4") do
          a(href: "#", class: "inline-flex items-center justify-center px-6 py-3 bg-foreground text-background text-sm font-medium hover:opacity-80 transition-opacity") do
            "Browse Components"
          end
          a(href: "https://github.com/sethhorsley/seth_ui", class: "inline-flex items-center justify-center px-6 py-3 border border-border text-sm font-medium hover:bg-muted transition-colors") do
            "View on GitHub"
          end
        end
      end

      # Divider
      div(class: "border-t border-border mx-6") { }

      # Features
      div(class: "grid grid-cols-1 sm:grid-cols-3 divide-y sm:divide-y-0 sm:divide-x divide-border") do
        feature(
          label: "Phlex-first",
          description: "Components written in pure Ruby using Phlex. No ERB, no templates."
        )
        feature(
          label: "Registry",
          description: "Install only what you need. Each component is a single file you own."
        )
        feature(
          label: "Tailwind CSS",
          description: "Styled with Tailwind. Fully customizable to match your design system."
        )
      end

      # Divider
      div(class: "border-t border-border mx-6") { }
    end
  end

  private

  def feature(label:, description:)
    div(class: "px-8 py-12") do
      p(class: "text-sm font-semibold mb-2") { label }
      p(class: "text-sm text-muted-foreground leading-relaxed") { description }
    end
  end
end
